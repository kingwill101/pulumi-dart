// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_config_single_region_key.dart';

/// {@template pulumi_discoveryengine_cmek_config_cmek_config_args_doc}
/// The set of arguments for CmekConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_cmek_config_cmek_config_args_doc}
class CmekConfigArgs {
  /// The unique id of the cmek config.
  final pulumi.Input<String> cmekConfigId;
  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  final pulumi.Input<String> kmsKey;
  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  final pulumi.Input<bool>? setDefault;
  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  final pulumi.Input<List<CmekConfigSingleRegionKey>>? singleRegionKeys;

  /// Creates a new [CmekConfigArgs].
  /// [cmekConfigId] The unique id of the cmek config.
  /// [kmsKey] KMS key resource name which will be used to encrypt resources
  /// [location] The geographic location where the CMEK config should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [setDefault] Set the following CmekConfig as the default to be used for child resources
  /// [singleRegionKeys] Single-regional CMEKs that are required for some VAIS features.
  CmekConfigArgs({
    required this.cmekConfigId,
    required this.kmsKey,
    required this.location,
    this.project,
    this.setDefault,
    this.singleRegionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekConfigId': cmekConfigId,
      'kmsKey': kmsKey,
      'location': location,
      'project': ?project,
      'setDefault': ?setDefault,
      'singleRegionKeys': ?pulumi.Input.mapOptionalInputValue<List<CmekConfigSingleRegionKey>, List<Map<String, dynamic>>>(singleRegionKeys, (value) => pulumi.Input.encodeList<CmekConfigSingleRegionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CmekConfigArgs.fromMap(Map<String, dynamic> map) {
    return CmekConfigArgs(
      cmekConfigId: pulumi.Input.fromValue(map['cmekConfigId'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setDefault: (() { final guardedValue = map['setDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      singleRegionKeys: (() { final guardedValue = map['singleRegionKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CmekConfigSingleRegionKey>(guardedValue, (value) => CmekConfigSingleRegionKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

