// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_service_resolver.dart';

/// {@template pulumi_kms_ekm_connection_ekm_connection_args_doc}
/// The set of arguments for EkmConnection.
/// {@endtemplate}
/// {@macro pulumi_kms_ekm_connection_ekm_connection_args_doc}
class EkmConnectionArgs {
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
  final pulumi.Input<String> location;
  /// The resource name for the EkmConnection.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  /// Structure is documented below.
  final pulumi.Input<List<EkmConnectionServiceResolver>> serviceResolvers;

  /// Creates a new [EkmConnectionArgs].
  /// [cryptoSpacePath] Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  /// [etag] Optional. Etag of the currently stored EkmConnection.
  /// [keyManagementMode] Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// [location] The location for the EkmConnection.
  /// [name] The resource name for the EkmConnection.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceResolvers] A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  EkmConnectionArgs({
    pulumi.Output<String>? cryptoSpacePath,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? keyManagementMode,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<List<EkmConnectionServiceResolver>> serviceResolvers,
  }) :
      cryptoSpacePath = pulumi.Input.asOptionalInput<String>(cryptoSpacePath),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      keyManagementMode = pulumi.Input.asOptionalInput<String>(keyManagementMode),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceResolvers = pulumi.Input.asInput<List<EkmConnectionServiceResolver>>(serviceResolvers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoSpacePath': ?cryptoSpacePath,
      'etag': ?etag,
      'keyManagementMode': ?keyManagementMode,
      'location': location,
      'name': ?name,
      'project': ?project,
      'serviceResolvers': pulumi.Input.mapInputValue<List<EkmConnectionServiceResolver>, List<Map<String, dynamic>>>(serviceResolvers, (value) => pulumi.Input.encodeList<EkmConnectionServiceResolver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionArgs(
      cryptoSpacePath: map['cryptoSpacePath'] == null ? null : pulumi.Output.create<String>(map['cryptoSpacePath'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      keyManagementMode: map['keyManagementMode'] == null ? null : pulumi.Output.create<String>(map['keyManagementMode'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceResolvers: pulumi.Output.create<List<EkmConnectionServiceResolver>>(pulumi.Input.decodeList<EkmConnectionServiceResolver>(map['serviceResolvers'], (value) => EkmConnectionServiceResolver.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

