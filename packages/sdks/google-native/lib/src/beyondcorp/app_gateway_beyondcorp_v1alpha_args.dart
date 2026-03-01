// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_gateway_host_type_beyondcorp_v1alpha.dart';
import 'app_gateway_type_beyondcorp_v1alpha.dart';

/// {@template pulumi_beyondcorp_v1alpha_app_gateway_beyondcorp_v1alpha_args_doc}
/// The set of arguments for AppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_app_gateway_beyondcorp_v1alpha_args_doc}
class AppGatewayBeyondcorpV1alphaArgs {
  /// Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appGatewayId;
  /// Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// The type of hosting used by the AppGateway.
  final pulumi.Input<AppGatewayHostTypeBeyondcorpV1alpha> hostType;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of network connectivity used by the AppGateway.
  final pulumi.Input<AppGatewayTypeBeyondcorpV1alpha> type;

  /// Creates a new [AppGatewayBeyondcorpV1alphaArgs].
  /// [appGatewayId] Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters.
  /// [hostType] The type of hosting used by the AppGateway.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppGateway. The name is ignored when creating an AppGateway.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of network connectivity used by the AppGateway.
  AppGatewayBeyondcorpV1alphaArgs({
    pulumi.Output<String>? appGatewayId,
    pulumi.Output<String>? displayName,
    required pulumi.Output<AppGatewayHostTypeBeyondcorpV1alpha> hostType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<AppGatewayTypeBeyondcorpV1alpha> type,
  }) :
      appGatewayId = pulumi.Input.asOptionalInput<String>(appGatewayId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      hostType = pulumi.Input.asInput<AppGatewayHostTypeBeyondcorpV1alpha>(hostType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asInput<AppGatewayTypeBeyondcorpV1alpha>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': ?appGatewayId,
      'displayName': ?displayName,
      'hostType': pulumi.Input.mapInputValue<AppGatewayHostTypeBeyondcorpV1alpha, String>(hostType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<AppGatewayTypeBeyondcorpV1alpha, String>(type, (value) => value.value),
    };
  }

  factory AppGatewayBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return AppGatewayBeyondcorpV1alphaArgs(
      appGatewayId: map['appGatewayId'] == null ? null : pulumi.Output.create<String>(map['appGatewayId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      hostType: pulumi.Output.create<AppGatewayHostTypeBeyondcorpV1alpha>(AppGatewayHostTypeBeyondcorpV1alpha.fromValue(map['hostType'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      type: pulumi.Output.create<AppGatewayTypeBeyondcorpV1alpha>(AppGatewayTypeBeyondcorpV1alpha.fromValue(map['type'] as String)),
    );
  }
}

