// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1beta3_processor_version_alias_response.dart';

/// Result data returned by getProcessor.
class GetProcessorDocumentaiV1beta3Result {
  /// The time the processor was created.
  final String? createTime;
  /// The default processor version.
  final String? defaultProcessorVersion;
  /// The display name of the processor.
  final String? displayName;
  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  final String? kmsKeyName;
  /// Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  final String? name;
  /// Immutable. The http endpoint that can be called to invoke processing.
  final String? processEndpoint;
  /// The processor version aliases.
  final List<GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse>? processorVersionAliases;
  /// The state of the processor.
  final String? state;
  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  final String? type;

  /// Creates a new [GetProcessorDocumentaiV1beta3Result].
  /// [createTime] The time the processor was created.
  /// [defaultProcessorVersion] The default processor version.
  /// [displayName] The display name of the processor.
  /// [kmsKeyName] The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  /// [name] Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  /// [processEndpoint] Immutable. The http endpoint that can be called to invoke processing.
  /// [processorVersionAliases] The processor version aliases.
  /// [state] The state of the processor.
  /// [type] The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  const GetProcessorDocumentaiV1beta3Result({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.name,
    this.processEndpoint,
    this.processorVersionAliases,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultProcessorVersion': ?defaultProcessorVersion,
      'displayName': ?displayName,
      'kmsKeyName': ?kmsKeyName,
      'name': ?name,
      'processEndpoint': ?processEndpoint,
      'processorVersionAliases': ?(() { final guardedValue = processorVersionAliases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetProcessorDocumentaiV1beta3Result.fromMap(Map<String, dynamic> map) {
    return GetProcessorDocumentaiV1beta3Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultProcessorVersion: (() { final guardedValue = map['defaultProcessorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      processEndpoint: (() { final guardedValue = map['processEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      processorVersionAliases: (() { final guardedValue = map['processorVersionAliases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse>(guardedValue, (value) => GoogleCloudDocumentaiV1beta3ProcessorVersionAliasResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
