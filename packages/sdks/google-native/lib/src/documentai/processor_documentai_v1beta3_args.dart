// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1beta3_processor_documentai_v1beta3_args_doc}
/// The set of arguments for Processor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1beta3_processor_documentai_v1beta3_args_doc}
class ProcessorDocumentaiV1beta3Args {
  /// The time the processor was created.
  final pulumi.Input<String>? createTime;
  /// The default processor version.
  final pulumi.Input<String>? defaultProcessorVersion;
  /// The display name of the processor.
  final pulumi.Input<String>? displayName;
  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  final pulumi.Input<String>? kmsKeyName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  final pulumi.Input<String>? type;

  /// Creates a new [ProcessorDocumentaiV1beta3Args].
  /// [createTime] The time the processor was created.
  /// [defaultProcessorVersion] The default processor version.
  /// [displayName] The display name of the processor.
  /// [kmsKeyName] The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  /// [location] Optional.
  /// [project] Optional.
  /// [type] The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  ProcessorDocumentaiV1beta3Args({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? defaultProcessorVersion,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? type,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultProcessorVersion = pulumi.Input.asOptionalInput<String>(defaultProcessorVersion),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultProcessorVersion': ?defaultProcessorVersion,
      'displayName': ?displayName,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'project': ?project,
      'type': ?type,
    };
  }

  factory ProcessorDocumentaiV1beta3Args.fromMap(Map<String, dynamic> map) {
    return ProcessorDocumentaiV1beta3Args(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultProcessorVersion: map['defaultProcessorVersion'] == null ? null : pulumi.Output.create<String>(map['defaultProcessorVersion'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

