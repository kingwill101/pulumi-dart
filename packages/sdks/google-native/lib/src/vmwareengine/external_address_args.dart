// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_external_address_args_doc}
/// The set of arguments for ExternalAddress.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_external_address_args_doc}
class ExternalAddressArgs {
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;
  /// Required. The user-provided identifier of the `ExternalAddress` to be created. This identifier must be unique among `ExternalAddress` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> externalAddressId;
  /// The internal IP address of a workload VM.
  final pulumi.Input<String>? internalIp;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [ExternalAddressArgs].
  /// [description] User-provided description for this resource.
  /// [externalAddressId] Required. The user-provided identifier of the `ExternalAddress` to be created. This identifier must be unique among `ExternalAddress` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [internalIp] The internal IP address of a workload VM.
  /// [location] Optional.
  /// [privateCloudId] Required.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  ExternalAddressArgs({
    this.description,
    required this.externalAddressId,
    this.internalIp,
    this.location,
    required this.privateCloudId,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'externalAddressId': externalAddressId,
      'internalIp': ?internalIp,
      'location': ?location,
      'privateCloudId': privateCloudId,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory ExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAddressArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      externalAddressId: (map['externalAddressId'] as String).input(),
      internalIp: map['internalIp'] == null ? null : (map['internalIp']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
    );
  }
}

