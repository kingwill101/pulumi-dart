// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_config_single_region_key.dart';

/// Input properties used for looking up and filtering CmekConfig resources.
class CmekConfigState {
  /// The unique id of the cmek config.
  final pulumi.Input<String>? cmekConfigId;
  /// The default CmekConfig for the Customer.
  final pulumi.Input<bool>? isDefault;
  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  final pulumi.Input<String>? kmsKey;
  /// KMS key version resource name which will be used to encrypt resources
  /// `<kms_key>/cryptoKeyVersions/{keyVersion}`.
  final pulumi.Input<String>? kmsKeyVersion;
  /// The timestamp of the last key rotation.
  final pulumi.Input<int>? lastRotationTimestampMicros;
  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the cmek config. Values are of the format
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// Whether the NotebookLM Corpus is ready to be used.
  final pulumi.Input<String>? notebooklmState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  final pulumi.Input<bool>? setDefault;
  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  final pulumi.Input<List<CmekConfigSingleRegionKey>>? singleRegionKeys;
  /// The state of the CmekConfig.
  final pulumi.Input<String>? state;

  /// Creates a new [CmekConfigState].
  /// [cmekConfigId] The unique id of the cmek config.
  /// [isDefault] The default CmekConfig for the Customer.
  /// [kmsKey] KMS key resource name which will be used to encrypt resources
  /// [kmsKeyVersion] KMS key version resource name which will be used to encrypt resources
  /// [lastRotationTimestampMicros] The timestamp of the last key rotation.
  /// [location] The geographic location where the CMEK config should reside. The value can
  /// [name] The unique full resource name of the cmek config. Values are of the format
  /// [notebooklmState] Whether the NotebookLM Corpus is ready to be used.
  /// [project] The ID of the project in which the resource belongs.
  /// [setDefault] Set the following CmekConfig as the default to be used for child resources
  /// [singleRegionKeys] Single-regional CMEKs that are required for some VAIS features.
  /// [state] The state of the CmekConfig.
  CmekConfigState({
    pulumi.Output<String>? cmekConfigId,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<String>? kmsKeyVersion,
    pulumi.Output<int>? lastRotationTimestampMicros,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notebooklmState,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? setDefault,
    pulumi.Output<List<CmekConfigSingleRegionKey>>? singleRegionKeys,
    pulumi.Output<String>? state,
  }) :
      cmekConfigId = pulumi.Input.asOptionalInput<String>(cmekConfigId),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      kmsKeyVersion = pulumi.Input.asOptionalInput<String>(kmsKeyVersion),
      lastRotationTimestampMicros = pulumi.Input.asOptionalInput<int>(lastRotationTimestampMicros),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notebooklmState = pulumi.Input.asOptionalInput<String>(notebooklmState),
      project = pulumi.Input.asOptionalInput<String>(project),
      setDefault = pulumi.Input.asOptionalInput<bool>(setDefault),
      singleRegionKeys = pulumi.Input.asOptionalInput<List<CmekConfigSingleRegionKey>>(singleRegionKeys),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekConfigId': ?cmekConfigId,
      'isDefault': ?isDefault,
      'kmsKey': ?kmsKey,
      'kmsKeyVersion': ?kmsKeyVersion,
      'lastRotationTimestampMicros': ?lastRotationTimestampMicros,
      'location': ?location,
      'name': ?name,
      'notebooklmState': ?notebooklmState,
      'project': ?project,
      'setDefault': ?setDefault,
      'singleRegionKeys': ?pulumi.Input.mapOptionalInputValue<List<CmekConfigSingleRegionKey>, List<Map<String, dynamic>>>(singleRegionKeys, (value) => pulumi.Input.encodeList<CmekConfigSingleRegionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory CmekConfigState.fromMap(Map<String, dynamic> map) {
    return CmekConfigState(
      cmekConfigId: map['cmekConfigId'] == null ? null : pulumi.Output.create<String>(map['cmekConfigId'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      kmsKeyVersion: map['kmsKeyVersion'] == null ? null : pulumi.Output.create<String>(map['kmsKeyVersion'] as String),
      lastRotationTimestampMicros: map['lastRotationTimestampMicros'] == null ? null : pulumi.Output.create<int>(map['lastRotationTimestampMicros'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notebooklmState: map['notebooklmState'] == null ? null : pulumi.Output.create<String>(map['notebooklmState'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      setDefault: map['setDefault'] == null ? null : pulumi.Output.create<bool>(map['setDefault'] as bool),
      singleRegionKeys: map['singleRegionKeys'] == null ? null : pulumi.Output.create<List<CmekConfigSingleRegionKey>>(pulumi.Input.decodeList<CmekConfigSingleRegionKey>(map['singleRegionKeys'], (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>()))),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

