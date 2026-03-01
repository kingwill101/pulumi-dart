// ignore_for_file: unused_element, unnecessary_cast


class GroupDnsConfig {
  /// A list of nameservers the containers will search out to resolve requests. Changing this forces a new resource to be created.
  final List<String> nameservers;
  /// A list of [resolver configuration options](https://man7.org/linux/man-pages/man5/resolv.conf.5.html). Changing this forces a new resource to be created.
  final List<String>? options;
  /// A list of search domains that DNS requests will search along. Changing this forces a new resource to be created.
  final List<String>? searchDomains;

  /// Creates a new [GroupDnsConfig].
  /// [nameservers] A list of nameservers the containers will search out to resolve requests. Changing this forces a new resource to be created.
  /// [options] A list of [resolver configuration options](https://man7.org/linux/man-pages/man5/resolv.conf.5.html). Changing this forces a new resource to be created.
  /// [searchDomains] A list of search domains that DNS requests will search along. Changing this forces a new resource to be created.
  GroupDnsConfig({
    required this.nameservers,
    this.options,
    this.searchDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameservers': nameservers,
      'options': ?options,
      'searchDomains': ?searchDomains,
    };
  }

  factory GroupDnsConfig.fromMap(Map<String, dynamic> map) {
    return GroupDnsConfig(
      nameservers: (map['nameservers'] as List).cast<String>(),
      options: map['options'] == null ? null : (map['options'] as List).cast<String>(),
      searchDomains: map['searchDomains'] == null ? null : (map['searchDomains'] as List).cast<String>(),
    );
  }
}

