// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppFtpAllowed.
class GetWebAppFtpAllowedResult {
  /// &lt;code&gt;true&lt;/code&gt; to allow access to a publishing method; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool allow;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppFtpAllowedResult].
  /// [allow] &lt;code&gt;true&lt;/code&gt; to allow access to a publishing method; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  const GetWebAppFtpAllowedResult({
    required this.allow,
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': allow,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetWebAppFtpAllowedResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppFtpAllowedResult(
      allow: map['allow'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

