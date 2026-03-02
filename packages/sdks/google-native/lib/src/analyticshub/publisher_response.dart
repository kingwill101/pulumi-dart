// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains details of the listing publisher.
class PublisherResponse {
  /// Optional. Name of the listing publisher.
  final pulumi.Input<String> name;
  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final pulumi.Input<String> primaryContact;

  /// Creates a new [PublisherResponse].
  /// [name] Optional. Name of the listing publisher.
  /// [primaryContact] Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  PublisherResponse({
    required this.name,
    required this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryContact': primaryContact,
    };
  }

  factory PublisherResponse.fromMap(Map<String, dynamic> map) {
    return PublisherResponse(
      name: (map['name'] as String).input(),
      primaryContact: (map['primaryContact'] as String).input(),
    );
  }
}

