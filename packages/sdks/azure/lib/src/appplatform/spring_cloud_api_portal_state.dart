// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_api_portal_sso.dart';

/// Input properties used for looking up and filtering SpringCloudApiPortal resources.
class SpringCloudApiPortalState {
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
  final pulumi.Input<String>? springCloudServiceId;
  /// A `sso` block as defined below.
  final pulumi.Input<SpringCloudApiPortalSso>? sso;
  /// TODO.
  final pulumi.Input<String>? url;

  /// Creates a new [SpringCloudApiPortalState].
  /// [apiTryOutEnabled] Specifies whether the API try-out feature is enabled. When enabled, users can try out the API by sending requests and viewing responses in API portal.
  /// [gatewayIds] Specifies a list of Spring Cloud Gateway.
  /// [httpsOnlyEnabled] is only https is allowed?
  /// [instanceCount] Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between `1` and `500`. Defaults to `1` if not specified.
  /// [name] The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is `default`.
  /// [publicNetworkAccessEnabled] Is the public network access enabled?
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created.
  /// [sso] A `sso` block as defined below.
  /// [url] TODO.
  const SpringCloudApiPortalState({
    this.apiTryOutEnabled,
    this.gatewayIds,
    this.httpsOnlyEnabled,
    this.instanceCount,
    this.name,
    this.publicNetworkAccessEnabled,
    this.springCloudServiceId,
    this.sso,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTryOutEnabled': ?apiTryOutEnabled,
      'gatewayIds': ?gatewayIds,
      'httpsOnlyEnabled': ?httpsOnlyEnabled,
      'instanceCount': ?instanceCount,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'springCloudServiceId': ?springCloudServiceId,
      'sso': ?pulumi.Input.mapOptionalInputValue<SpringCloudApiPortalSso, Map<String, dynamic>>(sso, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory SpringCloudApiPortalState.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalState(
      apiTryOutEnabled: (() { final guardedValue = map['apiTryOutEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayIds: (() { final guardedValue = map['gatewayIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpsOnlyEnabled: (() { final guardedValue = map['httpsOnlyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      springCloudServiceId: (() { final guardedValue = map['springCloudServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sso: (() { final guardedValue = map['sso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudApiPortalSso.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
