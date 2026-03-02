// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtensionsInstanceConfig {
  /// List of extension events selected by consumer that extension is allowed to
  /// emit, identified by their types.
  final pulumi.Input<List<String>>? allowedEventTypes;
  /// (Output)
  /// The time at which the Extension Instance Config was created.
  final pulumi.Input<String>? createTime;
  /// Fully qualified Eventarc resource name that consumers should use for event triggers.
  final pulumi.Input<String>? eventarcChannel;
  /// The ref of the Extension from the Registry (e.g. publisher-id/awesome-extension)
  final pulumi.Input<String> extensionRef;
  /// The version of the Extension from the Registry (e.g. 1.0.3). If left blank, latest is assumed.
  final pulumi.Input<String>? extensionVersion;
  /// (Output)
  /// The unique identifier for this configuration.
  final pulumi.Input<String>? name;
  /// Environment variables that may be configured for the Extension
  final pulumi.Input<Map<String, String>> params;
  /// (Output)
  /// Postinstall instructions to be shown for this Extension, with
  /// template strings representing function and parameter values substituted
  /// with actual values. These strings include: ${param:FOO},
  /// ${function:myFunc.url},
  /// ${function:myFunc.name}, and ${function:myFunc.location}
  final pulumi.Input<String>? populatedPostinstallContent;
  /// Params whose values are only available at deployment time.
  /// Unlike other params, these will not be set as environment variables on
  /// functions. See a full list of system parameters at
  /// https://firebase.google.com/docs/extensions/publishers/parameters#system_parameters
  final pulumi.Input<Map<String, String>>? systemParams;

  /// Creates a new [ExtensionsInstanceConfig].
  /// [allowedEventTypes] List of extension events selected by consumer that extension is allowed to
  /// [createTime] (Output)
  /// [eventarcChannel] Fully qualified Eventarc resource name that consumers should use for event triggers.
  /// [extensionRef] The ref of the Extension from the Registry (e.g. publisher-id/awesome-extension)
  /// [extensionVersion] The version of the Extension from the Registry (e.g. 1.0.3). If left blank, latest is assumed.
  /// [name] (Output)
  /// [params] Environment variables that may be configured for the Extension
  /// [populatedPostinstallContent] (Output)
  /// [systemParams] Params whose values are only available at deployment time.
  ExtensionsInstanceConfig({
    this.allowedEventTypes,
    this.createTime,
    this.eventarcChannel,
    required this.extensionRef,
    this.extensionVersion,
    this.name,
    required this.params,
    this.populatedPostinstallContent,
    this.systemParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedEventTypes': ?allowedEventTypes,
      'createTime': ?createTime,
      'eventarcChannel': ?eventarcChannel,
      'extensionRef': extensionRef,
      'extensionVersion': ?extensionVersion,
      'name': ?name,
      'params': params,
      'populatedPostinstallContent': ?populatedPostinstallContent,
      'systemParams': ?systemParams,
    };
  }

  factory ExtensionsInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceConfig(
      allowedEventTypes: map['allowedEventTypes'] == null ? null : ((map['allowedEventTypes']! as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      eventarcChannel: map['eventarcChannel'] == null ? null : (map['eventarcChannel']! as String).input(),
      extensionRef: (map['extensionRef'] as String).input(),
      extensionVersion: map['extensionVersion'] == null ? null : (map['extensionVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      params: ((map['params'] as Map).cast<String, String>()).input(),
      populatedPostinstallContent: map['populatedPostinstallContent'] == null ? null : (map['populatedPostinstallContent']! as String).input(),
      systemParams: map['systemParams'] == null ? null : ((map['systemParams']! as Map).cast<String, String>()).input(),
    );
  }
}

