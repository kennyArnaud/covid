import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';

class Homescree extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescree> {
  final TextEditingController _dnsController = TextEditingController();
  final String _apiKey = 'JYBsVARp+0svvSX7VC8/BQ==ybIs9bv9KWWfUOTq';
  bool _isLoading = false;

  Future<void> _verifydns() async {
    final String dns = _dnsController.text;

    if (dns.isEmpty) {
      Fluttertoast.showToast(
        msg: "Veuillez entrer un numéro de téléphone",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    final Uri apiUrl = Uri.parse('https://api.api-ninjas.com/v1/dnslookup?domain= $dns'); // Replace with your API endpoint

    try {
      final response = await http.get(
        apiUrl,
        headers: {'X-Api-Key': _apiKey},
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['is_valid']) {
          Fluttertoast.showToast(
            msg: "Le DNS existe.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
          );
        } else {
          Fluttertoast.showToast(
            msg: "Le DNS n'existe pas.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
          );
        }
      } else {
        Fluttertoast.showToast(
          msg: "Erreur: ${response.statusCode}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
        );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Erreur de connexion.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Vérification du DNS"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Vérifiez votre DNS",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _dnsController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'entrer votre DNS',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Container(
                      child: _isLoading  ? Center(child: CircularProgressIndicator())
                          : ElevatedButton(
                        onPressed: _verifydns,
                        child: Text("Vérifier"),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 5, // Shadow effect
                        ),
                      ) ,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
