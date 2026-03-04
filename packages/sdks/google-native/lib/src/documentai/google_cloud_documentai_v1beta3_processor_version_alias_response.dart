// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the alias and the aliased resource name of processor version.
class GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse {
  /// The alias in the form of `processor_version` resource name.
  final pulumi.Input<String> alias;

  /// The resource name of aliased processor version.
  final pulumi.Input<String> processorVersion;

  /// Creates a new [GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse].
  /// [alias] The alias in the form of `processor_version` resource name.
  /// [processorVersion] The resource name of aliased processor version.
  GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse({
    required this.alias,
    required this.processorVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'processorVersion': processorVersion,
    };
  }

  factory GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      processorVersion: pulumi.Input.fromValue(
        map['processorVersion'] as String,
      ),
    );
  }
}
