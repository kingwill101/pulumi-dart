// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataExchange.
class GetDataExchangeAnalyticshubV1beta1Result {
  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final String? description;
  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final String? displayName;
  /// Optional. Documentation describing the data exchange.
  final String? documentation;
  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final String? icon;
  /// Number of listings contained in the data exchange.
  final int? listingCount;
  /// The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  final String? name;
  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  final String? primaryContact;

  /// Creates a new [GetDataExchangeAnalyticshubV1beta1Result].
  /// [description] Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  /// [displayName] Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  /// [documentation] Optional. Documentation describing the data exchange.
  /// [icon] Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  /// [listingCount] Number of listings contained in the data exchange.
  /// [name] The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  /// [primaryContact] Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  const GetDataExchangeAnalyticshubV1beta1Result({
    this.description,
    this.displayName,
    this.documentation,
    this.icon,
    this.listingCount,
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'listingCount': ?listingCount,
      'name': ?name,
      'primaryContact': ?primaryContact,
    };
  }

  factory GetDataExchangeAnalyticshubV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeAnalyticshubV1beta1Result(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listingCount: (() { final guardedValue = map['listingCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryContact: (() { final guardedValue = map['primaryContact']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
