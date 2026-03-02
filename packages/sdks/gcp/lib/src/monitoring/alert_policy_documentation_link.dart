// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyDocumentationLink {
  /// A short display name for the link. The display name must not be empty or exceed 63 characters. Example: "playbook".
  final pulumi.Input<String>? displayName;
  /// The url of a webpage. A url can be templatized by using variables in the path or the query parameters. The total length of a URL should not exceed 2083 characters before and after variable expansion. Example: "https://my_domain.com/playbook?name=${resource.name}".
  final pulumi.Input<String>? url;

  /// Creates a new [AlertPolicyDocumentationLink].
  /// [displayName] A short display name for the link. The display name must not be empty or exceed 63 characters. Example: "playbook".
  /// [url] The url of a webpage. A url can be templatized by using variables in the path or the query parameters. The total length of a URL should not exceed 2083 characters before and after variable expansion. Example: "https://my_domain.com/playbook?name=${resource.name}".
  AlertPolicyDocumentationLink({
    this.displayName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'url': ?url,
    };
  }

  factory AlertPolicyDocumentationLink.fromMap(Map<String, dynamic> map) {
    return AlertPolicyDocumentationLink(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

