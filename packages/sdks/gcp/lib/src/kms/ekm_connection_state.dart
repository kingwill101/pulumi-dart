// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_service_resolver.dart';

/// Input properties used for looking up and filtering EkmConnection resources.
class EkmConnectionState {
  /// Output only. The time at which the EkmConnection was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;

  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final pulumi.Input<String>? cryptoSpacePath;

  /// Optional. Etag of the currently stored EkmConnection.
  final pulumi.Input<String>? etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// Default value is `MANUAL`.
  /// Possible values are: `MANUAL`, `CLOUD_KMS`.
  final pulumi.Input<String>? keyManagementMode;

  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String>? location;

  /// The resource name for the EkmConnection.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  /// Structure is documented below.
  final pulumi.Input<List<EkmConnectionServiceResolver>>? serviceResolvers;

  /// Creates a new [EkmConnectionState].
  /// [createTime] Output only. The time at which the EkmConnection was created.
  /// [cryptoSpacePath] Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  /// [etag] Optional. Etag of the currently stored EkmConnection.
  /// [keyManagementMode] Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// [location] The location for the EkmConnection.
  /// [name] The resource name for the EkmConnection.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceResolvers] A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  EkmConnectionState({
    this.createTime,
    this.cryptoSpacePath,
    this.etag,
    this.keyManagementMode,
    this.location,
    this.name,
    this.project,
    this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'cryptoSpacePath': ?cryptoSpacePath,
      'etag': ?etag,
      'keyManagementMode': ?keyManagementMode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceResolvers':
          ?pulumi.Input.mapOptionalInputValue<
            List<EkmConnectionServiceResolver>,
            List<Map<String, dynamic>>
          >(
            serviceResolvers,
            (value) =>
                pulumi.Input.encodeList<
                  EkmConnectionServiceResolver,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EkmConnectionState.fromMap(Map<String, dynamic> map) {
    return EkmConnectionState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cryptoSpacePath: (() {
        final guardedValue = map['cryptoSpacePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyManagementMode: (() {
        final guardedValue = map['keyManagementMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceResolvers: (() {
        final guardedValue = map['serviceResolvers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EkmConnectionServiceResolver>(
            guardedValue,
            (value) => EkmConnectionServiceResolver.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
