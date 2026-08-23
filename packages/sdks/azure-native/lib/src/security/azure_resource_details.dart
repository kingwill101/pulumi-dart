// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Azure resource that was assessed
class AzureResourceDetails {
  /// The platform where the assessed resource resides
  /// Expected value is 'Azure'.
  final pulumi.Input<String> source;

  /// Creates a new [AzureResourceDetails].
  /// [source] The platform where the assessed resource resides
  const AzureResourceDetails({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory AzureResourceDetails.fromMap(Map<String, dynamic> map) {
    return AzureResourceDetails(
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
