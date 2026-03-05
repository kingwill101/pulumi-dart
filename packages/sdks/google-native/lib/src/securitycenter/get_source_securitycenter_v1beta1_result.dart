// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSource.
class GetSourceSecuritycenterV1beta1Result {
  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated/insecure libraries."
  final String description;
  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  final String displayName;
  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  final String name;

  /// Creates a new [GetSourceSecuritycenterV1beta1Result].
  /// [description] The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated/insecure libraries."
  /// [displayName] The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  /// [name] The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  GetSourceSecuritycenterV1beta1Result({
    required this.description,
    required this.displayName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'name': name,
    };
  }

  factory GetSourceSecuritycenterV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetSourceSecuritycenterV1beta1Result(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
    );
  }
}

