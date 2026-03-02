// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details of the listing publisher.
class PublisherResponseAnalyticshubV1beta1 {
  /// Optional. Name of the listing publisher.
  final pulumi.Input<String> name;
  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final pulumi.Input<String> primaryContact;

  /// Creates a new [PublisherResponseAnalyticshubV1beta1].
  /// [name] Optional. Name of the listing publisher.
  /// [primaryContact] Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  PublisherResponseAnalyticshubV1beta1({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryContact': primaryContact,
    };
  }

  factory PublisherResponseAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return PublisherResponseAnalyticshubV1beta1(
      name: (map['name'] as String).input(),
      primaryContact: (map['primaryContact'] as String).input(),
    );
  }
}

