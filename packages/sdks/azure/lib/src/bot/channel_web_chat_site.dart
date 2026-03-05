// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelWebChatSite {
  /// Is the endpoint parameters enabled for this site?
  final pulumi.Input<bool>? endpointParametersEnabled;
  /// The name of the site.
  final pulumi.Input<String> name;
  /// Is the storage site enabled for detailed logging? Defaults to `true`.
  final pulumi.Input<bool>? storageEnabled;
  /// Is the user upload enabled for this site? Defaults to `true`.
  final pulumi.Input<bool>? userUploadEnabled;

  /// Creates a new [ChannelWebChatSite].
  /// [endpointParametersEnabled] Is the endpoint parameters enabled for this site?
  /// [name] The name of the site.
  /// [storageEnabled] Is the storage site enabled for detailed logging? Defaults to `true`.
  /// [userUploadEnabled] Is the user upload enabled for this site? Defaults to `true`.
  ChannelWebChatSite({
    this.endpointParametersEnabled,
    required this.name,
    this.storageEnabled,
    this.userUploadEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointParametersEnabled': ?endpointParametersEnabled,
      'name': name,
      'storageEnabled': ?storageEnabled,
      'userUploadEnabled': ?userUploadEnabled,
    };
  }

  factory ChannelWebChatSite.fromMap(Map<String, dynamic> map) {
    return ChannelWebChatSite(
      endpointParametersEnabled: (() { final guardedValue = map['endpointParametersEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageEnabled: (() { final guardedValue = map['storageEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userUploadEnabled: (() { final guardedValue = map['userUploadEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

