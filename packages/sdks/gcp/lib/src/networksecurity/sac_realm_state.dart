// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_realm_pairing_key.dart';
import 'sac_realm_symantec_options.dart';

/// Input properties used for looking up and filtering SacRealm resources.
class SacRealmState {
  /// Timestamp when the realm was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Identifier. Resource name.
  final pulumi.Input<String>? name;
  /// Key to be shared with SSE service provider during pairing.
  /// Structure is documented below.
  final pulumi.Input<List<SacRealmPairingKey>>? pairingKeys;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// SSE service provider associated with the realm.
  /// Possible values are: `SECURITY_SERVICE_UNSPECIFIED`, `PALO_ALTO_PRISMA_ACCESS`, `SYMANTEC_CLOUD_SWG`.
  final pulumi.Input<String>? securityService;
  /// State of the realm.
  final pulumi.Input<String>? state;
  /// Configuration required for Symantec realms.
  /// Structure is documented below.
  final pulumi.Input<SacRealmSymantecOptions>? symantecOptions;
  /// Timestamp when the realm was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SacRealmState].
  /// [createTime] Timestamp when the realm was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Identifier. Resource name.
  /// [pairingKeys] Key to be shared with SSE service provider during pairing.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [securityService] SSE service provider associated with the realm.
  /// [state] State of the realm.
  /// [symantecOptions] Configuration required for Symantec realms.
  /// [updateTime] Timestamp when the realm was last updated.
  SacRealmState({
    this.createTime,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.pairingKeys,
    this.project,
    this.pulumiLabels,
    this.securityService,
    this.state,
    this.symantecOptions,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'pairingKeys': ?pulumi.Input.mapOptionalInputValue<List<SacRealmPairingKey>, List<Map<String, dynamic>>>(pairingKeys, (value) => pulumi.Input.encodeList<SacRealmPairingKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'securityService': ?securityService,
      'state': ?state,
      'symantecOptions': ?pulumi.Input.mapOptionalInputValue<SacRealmSymantecOptions, Map<String, dynamic>>(symantecOptions, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory SacRealmState.fromMap(Map<String, dynamic> map) {
    return SacRealmState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pairingKeys: (() { final guardedValue = map['pairingKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SacRealmPairingKey>(guardedValue, (value) => SacRealmPairingKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      securityService: (() { final guardedValue = map['securityService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symantecOptions: (() { final guardedValue = map['symantecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SacRealmSymantecOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

