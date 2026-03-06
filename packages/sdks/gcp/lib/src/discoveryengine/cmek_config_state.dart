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
  /// `&lt;kms_key&gt;/cryptoKeyVersions/{keyVersion}`.
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
  const CmekConfigState({
    this.cmekConfigId,
    this.isDefault,
    this.kmsKey,
    this.kmsKeyVersion,
    this.lastRotationTimestampMicros,
    this.location,
    this.name,
    this.notebooklmState,
    this.project,
    this.setDefault,
    this.singleRegionKeys,
    this.state,
  });

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
      cmekConfigId: (() { final guardedValue = map['cmekConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRotationTimestampMicros: (() { final guardedValue = map['lastRotationTimestampMicros']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebooklmState: (() { final guardedValue = map['notebooklmState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setDefault: (() { final guardedValue = map['setDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      singleRegionKeys: (() { final guardedValue = map['singleRegionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CmekConfigSingleRegionKey>(guardedValue, (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

