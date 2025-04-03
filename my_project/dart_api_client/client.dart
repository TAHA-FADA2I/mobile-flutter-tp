import 'dart:convert';
import 'package:http/http.dart' as http;

// 1. Fonction pour récupérer tous les produits
Future<void> getProducts(String baseUrl) async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/products'));
    
    if (response.statusCode == 200) {
      final List<dynamic> products = jsonDecode(response.body);
      print('=== Liste des produits ===');
      for (final product in products) {
        print('Nom: ${product['name']}, Prix: ${product['price']}€');
      }
    } else {
      print('Erreur ${response.statusCode}: ${response.body}');
    }
  } catch (e) {
    print('Erreur lors de la requête: $e');
  }
}

// 2. Fonction pour ajouter un produit
Future<void> addProduct(String baseUrl, String name, double price) async {
  try {
    final response = await http.post(
      Uri.parse('$baseUrl/products'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'price': price}),
    );

    if (response.statusCode == 201) {
      print('✅ Produit "$name" ajouté avec succès !');
    } else {
      print('Erreur ${response.statusCode}: ${response.body}');
    }
  } catch (e) {
    print('Erreur lors de l\'ajout: $e');
  }
}

// 3. Fonction pour récupérer les commandes
Future<void> getOrders(String baseUrl) async {
  try {
    final response = await http.get(Uri.parse('$baseUrl/orders'));
    
    if (response.statusCode == 200) {
      final List<dynamic> orders = jsonDecode(response.body);
      print('=== Liste des commandes ===');
      for (final order in orders) {
        print('Produit: ${order['product']}, Quantité: ${order['quantity']}');
      }
    } else {
      print('Erreur ${response.statusCode}: ${response.body}');
    }
  } catch (e) {
    print('Erreur lors de la requête: $e');
  }
}

// 4. Fonction pour ajouter une commande
Future<void> addOrder(String baseUrl, String productName, int quantity) async {
  try {
    final response = await http.post(
      Uri.parse('$baseUrl/orders'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'product': productName, 'quantity': quantity}),
    );

    if (response.statusCode == 201) {
      print('✅ Commande pour "$productName" créée avec succès !');
    } else {
      print('Erreur ${response.statusCode}: ${response.body}');
    }
  } catch (e) {
    print('Erreur lors de l\'ajout: $e');
  }
}

// Exemple d'utilisation
void main() async {
  const baseUrl = 'http://localhost:3000';

  // Test des fonctions
  await addProduct(baseUrl, 'T-Shirt', 19.99);
  await addProduct(baseUrl, 'Chaussures', 59.99);
  await getProducts(baseUrl);

  await addOrder(baseUrl, 'T-Shirt', 2);
  await addOrder(baseUrl, 'Chaussures', 1);
  await getOrders(baseUrl);
}