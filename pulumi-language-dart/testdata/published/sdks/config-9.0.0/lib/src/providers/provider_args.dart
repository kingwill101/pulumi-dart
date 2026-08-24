// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<String?>? pluginDownloadURL;

  /// Creates a new [ProviderArgs].
  /// [name] Required.
  /// [pluginDownloadURL] Optional.
  const ProviderArgs({
    required this.name,
    this.pluginDownloadURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'pluginDownloadURL': ?pluginDownloadURL,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      pluginDownloadURL: (() { final guardedValue = map['pluginDownloadURL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
