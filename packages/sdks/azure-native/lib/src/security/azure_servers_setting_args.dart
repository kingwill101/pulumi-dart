// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_azure_servers_setting_args_doc}
/// The set of arguments for AzureServersSetting.
/// {@endtemplate}
/// {@macro pulumi_security_azure_servers_setting_args_doc}
class AzureServersSettingArgs {
  /// The kind of the server vulnerability assessments setting
  /// Expected value is 'AzureServersSetting'.
  final pulumi.Input<String> kind;
  /// The selected vulnerability assessments provider on Azure servers in the defined scope.
  final pulumi.Input<dynamic> selectedProvider;
  /// The kind of the server vulnerability assessments setting
  final pulumi.Input<String?>? settingKind;

  /// Creates a new [AzureServersSettingArgs].
  /// [kind] The kind of the server vulnerability assessments setting
  /// [selectedProvider] The selected vulnerability assessments provider on Azure servers in the defined scope.
  /// [settingKind] The kind of the server vulnerability assessments setting
  const AzureServersSettingArgs({
    required this.kind,
    required this.selectedProvider,
    this.settingKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'selectedProvider': selectedProvider,
      'settingKind': ?settingKind,
    };
  }

  factory AzureServersSettingArgs.fromMap(Map<String, dynamic> map) {
    return AzureServersSettingArgs(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      selectedProvider: pulumi.Input.fromValue(map['selectedProvider']),
      settingKind: (() { final guardedValue = map['settingKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
