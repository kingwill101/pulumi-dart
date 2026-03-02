// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheDns {
  /// The DNS search domain for the HPC Cache.
  final pulumi.Input<String>? searchDomain;
  /// A list of DNS servers for the HPC Cache. At most three IP(s) are allowed to set.
  final pulumi.Input<List<String>> servers;

  /// Creates a new [CacheDns].
  /// [searchDomain] The DNS search domain for the HPC Cache.
  /// [servers] A list of DNS servers for the HPC Cache. At most three IP(s) are allowed to set.
  CacheDns({
    this.searchDomain,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchDomain': ?searchDomain,
      'servers': servers,
    };
  }

  factory CacheDns.fromMap(Map<String, dynamic> map) {
    return CacheDns(
      searchDomain: map['searchDomain'] == null ? null : (map['searchDomain'] as String).input(),
      servers: ((map['servers'] as List).cast<String>()).input(),
    );
  }
}

