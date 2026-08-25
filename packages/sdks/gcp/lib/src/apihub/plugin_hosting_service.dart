// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginHostingService {
  /// The URI of the service implemented by the plugin developer, used to
  /// invoke the plugin's functionality. This information is only required for
  /// user defined plugins.
  final pulumi.Input<String?>? serviceUri;

  /// Creates a new [PluginHostingService].
  /// [serviceUri] The URI of the service implemented by the plugin developer, used to
  const PluginHostingService({
    this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceUri': ?serviceUri,
    };
  }

  factory PluginHostingService.fromMap(Map<String, dynamic> map) {
    return PluginHostingService(
      serviceUri: (() { final guardedValue = map['serviceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
