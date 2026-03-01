// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_hcx_activation_key_args_doc}
/// The set of arguments for HcxActivationKey.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_hcx_activation_key_args_doc}
class HcxActivationKeyArgs {
  /// Required. The user-provided identifier of the `HcxActivationKey` to be created. This identifier must be unique among `HcxActivationKey` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> hcxActivationKeyId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [HcxActivationKeyArgs].
  /// [hcxActivationKeyId] Required. The user-provided identifier of the `HcxActivationKey` to be created. This identifier must be unique among `HcxActivationKey` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [location] Optional.
  /// [privateCloudId] Required.
  /// [project] Optional.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  HcxActivationKeyArgs({
    required pulumi.Output<String> hcxActivationKeyId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
  }) :
      hcxActivationKeyId = pulumi.Input.asInput<String>(hcxActivationKeyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxActivationKeyId': hcxActivationKeyId,
      'location': ?location,
      'privateCloudId': privateCloudId,
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory HcxActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return HcxActivationKeyArgs(
      hcxActivationKeyId: pulumi.Output.create<String>(map['hcxActivationKeyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

