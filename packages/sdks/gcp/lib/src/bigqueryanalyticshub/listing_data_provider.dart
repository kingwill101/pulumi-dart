// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingDataProvider {
  /// Name of the data provider.
  final pulumi.Input<String> name;
  /// Email or URL of the data provider.
  final pulumi.Input<String>? primaryContact;

  /// Creates a new [ListingDataProvider].
  /// [name] Name of the data provider.
  /// [primaryContact] Email or URL of the data provider.
  ListingDataProvider({
    required this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryContact': ?primaryContact,
    };
  }

  factory ListingDataProvider.fromMap(Map<String, dynamic> map) {
    return ListingDataProvider(
      name: (map['name'] as String).input(),
      primaryContact: map['primaryContact'] == null ? null : (map['primaryContact']! as String).input(),
    );
  }
}

