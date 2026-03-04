// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_dev_tool_portal_sso.dart';

/// Input properties used for looking up and filtering SpringCloudDevToolPortal resources.
class SpringCloudDevToolPortalState {
  /// Should the Accelerator plugin be enabled?
  final pulumi.Input<bool>? applicationAcceleratorEnabled;

  /// Should the Application Live View be enabled?
  final pulumi.Input<bool>? applicationLiveViewEnabled;

  /// The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  final pulumi.Input<String>? name;

  /// Is public network access enabled?
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// A `sso` block as defined below.
  final pulumi.Input<SpringCloudDevToolPortalSso>? sso;

  /// Creates a new [SpringCloudDevToolPortalState].
  /// [applicationAcceleratorEnabled] Should the Accelerator plugin be enabled?
  /// [applicationLiveViewEnabled] Should the Application Live View be enabled?
  /// [name] The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is `default`. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created.
  /// [sso] A `sso` block as defined below.
  SpringCloudDevToolPortalState({
    this.applicationAcceleratorEnabled,
    this.applicationLiveViewEnabled,
    this.name,
    this.publicNetworkAccessEnabled,
    this.springCloudServiceId,
    this.sso,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorEnabled': ?applicationAcceleratorEnabled,
      'applicationLiveViewEnabled': ?applicationLiveViewEnabled,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'springCloudServiceId': ?springCloudServiceId,
      'sso':
          ?pulumi.Input.mapOptionalInputValue<
            SpringCloudDevToolPortalSso,
            Map<String, dynamic>
          >(sso, (value) => value.toMap()),
    };
  }

  factory SpringCloudDevToolPortalState.fromMap(Map<String, dynamic> map) {
    return SpringCloudDevToolPortalState(
      applicationAcceleratorEnabled: (() {
        final guardedValue = map['applicationAcceleratorEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applicationLiveViewEnabled: (() {
        final guardedValue = map['applicationLiveViewEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      springCloudServiceId: (() {
        final guardedValue = map['springCloudServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sso: (() {
        final guardedValue = map['sso'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SpringCloudDevToolPortalSso.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
