// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_engine_network_type.dart';

/// {@template pulumi_vmwareengine_v1_vmware_engine_network_args_doc}
/// The set of arguments for VmwareEngineNetwork.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_vmware_engine_network_args_doc}
class VmwareEngineNetworkArgs {
  /// User-provided description for this VMware Engine network.
  final pulumi.Input<String>? description;
  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// VMware Engine network type.
  final pulumi.Input<VmwareEngineNetworkType> type;
  /// Required. The user-provided identifier of the new VMware Engine network. This identifier must be unique among VMware Engine network resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * For networks of type LEGACY, adheres to the format: `{region-id}-default`. Replace `{region-id}` with the region where you want to create the VMware Engine network. For example, "us-central1-default". * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> vmwareEngineNetworkId;

  /// Creates a new [VmwareEngineNetworkArgs].
  /// [description] User-provided description for this VMware Engine network.
  /// [etag] Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] VMware Engine network type.
  /// [vmwareEngineNetworkId] Required. The user-provided identifier of the new VMware Engine network. This identifier must be unique among VMware Engine network resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * For networks of type LEGACY, adheres to the format: `{region-id}-default`. Replace `{region-id}` with the region where you want to create the VMware Engine network. For example, "us-central1-default". * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  VmwareEngineNetworkArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<VmwareEngineNetworkType> type,
    required pulumi.Output<String> vmwareEngineNetworkId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asInput<VmwareEngineNetworkType>(type),
      vmwareEngineNetworkId = pulumi.Input.asInput<String>(vmwareEngineNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<VmwareEngineNetworkType, String>(type, (value) => value.value),
      'vmwareEngineNetworkId': vmwareEngineNetworkId,
    };
  }

  factory VmwareEngineNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VmwareEngineNetworkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      type: pulumi.Output.create<VmwareEngineNetworkType>(VmwareEngineNetworkType.fromValue(map['type'] as String)),
      vmwareEngineNetworkId: pulumi.Output.create<String>(map['vmwareEngineNetworkId'] as String),
    );
  }
}

