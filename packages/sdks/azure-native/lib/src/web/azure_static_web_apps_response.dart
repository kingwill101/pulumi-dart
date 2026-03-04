// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_static_web_apps_registration_response.dart';

/// The configuration settings of the Azure Static Web Apps provider.
class AzureStaticWebAppsResponse {
  /// &lt;code&gt;false&lt;/code&gt; if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;

  /// The configuration settings of the Azure Static Web Apps registration.
  final pulumi.Input<AzureStaticWebAppsRegistrationResponse>? registration;

  /// Creates a new [AzureStaticWebAppsResponse].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the Azure Static Web Apps provider should not be enabled despite the set registration; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [registration] The configuration settings of the Azure Static Web Apps registration.
  AzureStaticWebAppsResponse({this.enabled, this.registration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'registration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureStaticWebAppsRegistrationResponse,
            Map<String, dynamic>
          >(registration, (value) => value.toMap()),
    };
  }

  factory AzureStaticWebAppsResponse.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      registration: (() {
        final guardedValue = map['registration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureStaticWebAppsRegistrationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
