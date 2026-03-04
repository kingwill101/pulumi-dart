// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_access_settings.dart';
import 'settings_application_settings.dart';

/// {@template pulumi_iap_settings_settings_args_doc}
/// The set of arguments for Settings.
/// {@endtemplate}
/// {@macro pulumi_iap_settings_settings_args_doc}
class SettingsArgs {
  /// Top level wrapper for all access related setting in IAP.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettings>? accessSettings;

  /// Top level wrapper for all application related settings in IAP.
  /// Structure is documented below.
  final pulumi.Input<SettingsApplicationSettings>? applicationSettings;

  /// The resource name of the IAP protected resource. Name can have below resources:
  /// * organizations/{organization_id}
  /// * folders/{folder_id}
  /// * projects/{project_id}
  /// * projects/{project_id}/iap_web
  /// * projects/{project_id}/iap_web/compute
  /// * projects/{project_id}/iap_web/compute-{region}
  /// * projects/{project_id}/iap_web/compute/services/{service_id}
  /// * projects/{project_id}/iap_web/compute-{region}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}/version/{version_id}
  final pulumi.Input<String>? name;

  /// Creates a new [SettingsArgs].
  /// [accessSettings] Top level wrapper for all access related setting in IAP.
  /// [applicationSettings] Top level wrapper for all application related settings in IAP.
  /// [name] The resource name of the IAP protected resource. Name can have below resources:
  SettingsArgs({this.accessSettings, this.applicationSettings, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SettingsAccessSettings,
            Map<String, dynamic>
          >(accessSettings, (value) => value.toMap()),
      'applicationSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SettingsApplicationSettings,
            Map<String, dynamic>
          >(applicationSettings, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      accessSettings: (() {
        final guardedValue = map['accessSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SettingsAccessSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      applicationSettings: (() {
        final guardedValue = map['applicationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SettingsApplicationSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
