// ignore_for_file: unused_element, unnecessary_cast

import 'sharing_environment_config_response.dart';

/// Result data returned by getDataExchange.
class GetDataExchangeResult {
  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final String description;
  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final String displayName;
  /// Optional. Documentation describing the data exchange.
  final String documentation;
  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final String icon;
  /// Number of listings contained in the data exchange.
  final int listingCount;
  /// The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  final String name;
  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  final String primaryContact;
  /// Optional. Configurable data sharing environment option for a data exchange.
  final SharingEnvironmentConfigResponse sharingEnvironmentConfig;

  /// Creates a new [GetDataExchangeResult].
  /// [description] Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the data exchange.
  /// [icon] Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [listingCount] Number of listings contained in the data exchange.
  /// [name] The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  /// [sharingEnvironmentConfig] Optional. Configurable data sharing environment option for a data exchange.
  GetDataExchangeResult({
    required this.description,
    required this.displayName,
    required this.documentation,
    required this.icon,
    required this.listingCount,
    required this.name,
    required this.primaryContact,
    required this.sharingEnvironmentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'documentation': documentation,
      'icon': icon,
      'listingCount': listingCount,
      'name': name,
      'primaryContact': primaryContact,
      'sharingEnvironmentConfig': sharingEnvironmentConfig.toMap(),
    };
  }

  factory GetDataExchangeResult.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      documentation: map['documentation'] as String,
      icon: map['icon'] as String,
      listingCount: map['listingCount'] as int,
      name: map['name'] as String,
      primaryContact: map['primaryContact'] as String,
      sharingEnvironmentConfig: SharingEnvironmentConfigResponse.fromMap((map['sharingEnvironmentConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

