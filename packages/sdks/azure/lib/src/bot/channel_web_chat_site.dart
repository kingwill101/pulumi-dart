// ignore_for_file: unused_element, unnecessary_cast


class ChannelWebChatSite {
  /// Is the endpoint parameters enabled for this site?
  final bool? endpointParametersEnabled;
  /// The name of the site.
  final String name;
  /// Is the storage site enabled for detailed logging? Defaults to `true`.
  final bool? storageEnabled;
  /// Is the user upload enabled for this site? Defaults to `true`.
  final bool? userUploadEnabled;

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
      endpointParametersEnabled: map['endpointParametersEnabled'] == null ? null : map['endpointParametersEnabled'] as bool,
      name: map['name'] as String,
      storageEnabled: map['storageEnabled'] == null ? null : map['storageEnabled'] as bool,
      userUploadEnabled: map['userUploadEnabled'] == null ? null : map['userUploadEnabled'] as bool,
    );
  }
}

