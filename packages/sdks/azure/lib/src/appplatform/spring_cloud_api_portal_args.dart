// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_api_portal_sso.dart';

/// {@template pulumi_appplatform_spring_cloud_api_portal_spring_cloud_api_portal_args_doc}
/// The set of arguments for SpringCloudApiPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_api_portal_spring_cloud_api_portal_args_doc}
class SpringCloudApiPortalArgs {
  /// Specifies whether the API try-out feature is enabled. When enabled, users can try out the API by sending requests and viewing responses in API portal.
  final pulumi.Input<bool>? apiTryOutEnabled;
  /// Specifies a list of Spring Cloud Gateway.
  final pulumi.Input<List<String>>? gatewayIds;
  /// is only https is allowed?
  final pulumi.Input<bool>? httpsOnlyEnabled;
  /// Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  final pulumi.Input<int>? instanceCount;
  /// The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// Is the public network access enabled?
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// A `sso` block as defined below.
  final pulumi.Input<SpringCloudApiPortalSso>? sso;

  /// Creates a new [SpringCloudApiPortalArgs].
  /// [apiTryOutEnabled] Specifies whether the API try-out feature is enabled. When enabled, users can try out the API by sending requests and viewing responses in API portal.
  /// [gatewayIds] Specifies a list of Spring Cloud Gateway.
  /// [httpsOnlyEnabled] is only https is allowed?
  /// [instanceCount] Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [name] The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`.
  /// [publicNetworkAccessEnabled] Is the public network access enabled?
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created.
  /// [sso] A `sso` block as defined below.
  SpringCloudApiPortalArgs({
    pulumi.Output<bool>? apiTryOutEnabled,
    pulumi.Output<List<String>>? gatewayIds,
    pulumi.Output<bool>? httpsOnlyEnabled,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> springCloudServiceId,
    pulumi.Output<SpringCloudApiPortalSso>? sso,
  }) :
      apiTryOutEnabled = pulumi.Input.asOptionalInput<bool>(apiTryOutEnabled),
      gatewayIds = pulumi.Input.asOptionalInput<List<String>>(gatewayIds),
      httpsOnlyEnabled = pulumi.Input.asOptionalInput<bool>(httpsOnlyEnabled),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId),
      sso = pulumi.Input.asOptionalInput<SpringCloudApiPortalSso>(sso);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTryOutEnabled': ?apiTryOutEnabled,
      'gatewayIds': ?gatewayIds,
      'httpsOnlyEnabled': ?httpsOnlyEnabled,
      'instanceCount': ?instanceCount,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'springCloudServiceId': springCloudServiceId,
      'sso': ?pulumi.Input.mapOptionalInputValue<SpringCloudApiPortalSso, Map<String, dynamic>>(sso, (value) => value.toMap()),
    };
  }

  factory SpringCloudApiPortalArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalArgs(
      apiTryOutEnabled: map['apiTryOutEnabled'] == null ? null : pulumi.Output.create<bool>(map['apiTryOutEnabled'] as bool),
      gatewayIds: map['gatewayIds'] == null ? null : pulumi.Output.create<List<String>>((map['gatewayIds'] as List).cast<String>()),
      httpsOnlyEnabled: map['httpsOnlyEnabled'] == null ? null : pulumi.Output.create<bool>(map['httpsOnlyEnabled'] as bool),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      springCloudServiceId: pulumi.Output.create<String>(map['springCloudServiceId'] as String),
      sso: map['sso'] == null ? null : pulumi.Output.create<SpringCloudApiPortalSso>(SpringCloudApiPortalSso.fromMap((map['sso'] as Map).cast<String, dynamic>())),
    );
  }
}

