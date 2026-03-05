// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_key_management_mode.dart';
import 'service_resolver.dart';

/// {@template pulumi_cloudkms_v1_ekm_connection_args_doc}
/// The set of arguments for EkmConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_ekm_connection_args_doc}
class EkmConnectionArgs {
  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final pulumi.Input<String>? cryptoSpacePath;
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  final pulumi.Input<String>? ekmConnectionId;
  /// Optional. Etag of the currently stored EkmConnection.
  final pulumi.Input<String>? etag;
  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  final pulumi.Input<EkmConnectionKeyManagementMode>? keyManagementMode;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  final pulumi.Input<List<ServiceResolver>>? serviceResolvers;

  /// Creates a new [EkmConnectionArgs].
  /// [cryptoSpacePath] Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  /// [ekmConnectionId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  /// [etag] Optional. Etag of the currently stored EkmConnection.
  /// [keyManagementMode] Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceResolvers] A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  EkmConnectionArgs({
    this.cryptoSpacePath,
    this.ekmConnectionId,
    this.etag,
    this.keyManagementMode,
    this.location,
    this.project,
    this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoSpacePath': ?cryptoSpacePath,
      'ekmConnectionId': ?ekmConnectionId,
      'etag': ?etag,
      'keyManagementMode': ?pulumi.Input.mapOptionalInputValue<EkmConnectionKeyManagementMode, String>(keyManagementMode, (value) => value.wireValue),
      'location': ?location,
      'project': ?project,
      'serviceResolvers': ?pulumi.Input.mapOptionalInputValue<List<ServiceResolver>, List<Map<String, dynamic>>>(serviceResolvers, (value) => pulumi.Input.encodeList<ServiceResolver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionArgs(
      cryptoSpacePath: (() { final guardedValue = map['cryptoSpacePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ekmConnectionId: (() { final guardedValue = map['ekmConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyManagementMode: (() { final guardedValue = map['keyManagementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EkmConnectionKeyManagementMode.fromValue(guardedValue as String)); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceResolvers: (() { final guardedValue = map['serviceResolvers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceResolver>(guardedValue, (value) => ServiceResolver.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

