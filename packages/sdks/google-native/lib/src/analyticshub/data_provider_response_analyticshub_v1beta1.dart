// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details of the data provider.
class DataProviderResponseAnalyticshubV1beta1 {
  /// Optional. Name of the data provider.
  final pulumi.Input<String> name;
  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final pulumi.Input<String> primaryContact;

  /// Creates a new [DataProviderResponseAnalyticshubV1beta1].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  DataProviderResponseAnalyticshubV1beta1({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryContact': primaryContact,
    };
  }

  factory DataProviderResponseAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return DataProviderResponseAnalyticshubV1beta1(
      name: pulumi.Input.fromValue(map['name'] as String),
      primaryContact: pulumi.Input.fromValue(map['primaryContact'] as String),
    );
  }
}

