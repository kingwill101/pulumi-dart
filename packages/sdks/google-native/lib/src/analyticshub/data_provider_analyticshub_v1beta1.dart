// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details of the data provider.
class DataProviderAnalyticshubV1beta1 {
  /// Optional. Name of the data provider.
  final pulumi.Input<String>? name;
  /// Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  final pulumi.Input<String>? primaryContact;

  /// Creates a new [DataProviderAnalyticshubV1beta1].
  /// [name] Optional. Name of the data provider.
  /// [primaryContact] Optional. Email or URL of the data provider. Max Length: 1000 bytes.
  const DataProviderAnalyticshubV1beta1({
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'primaryContact': ?primaryContact,
    };
  }

  factory DataProviderAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return DataProviderAnalyticshubV1beta1(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
