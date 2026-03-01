// ignore_for_file: unused_element, unnecessary_cast


class InferenceClusterSsl {
  /// The certificate for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final String? cert;
  /// The cname of the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final String? cname;
  /// The key content for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final String? key;
  /// The leaf domain label for the SSL configuration. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final String? leafDomainLabel;
  /// Whether or not to overwrite existing leaf domain. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname` Changing this forces a new Machine Learning Inference Cluster to be created.
  final bool? overwriteExistingDomain;

  /// Creates a new [InferenceClusterSsl].
  /// [cert] The certificate for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  /// [cname] The cname of the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  /// [key] The key content for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  /// [leafDomainLabel] The leaf domain label for the SSL configuration. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  /// [overwriteExistingDomain] Whether or not to overwrite existing leaf domain. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname` Changing this forces a new Machine Learning Inference Cluster to be created.
  InferenceClusterSsl({
    this.cert,
    this.cname,
    this.key,
    this.leafDomainLabel,
    this.overwriteExistingDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'cname': ?cname,
      'key': ?key,
      'leafDomainLabel': ?leafDomainLabel,
      'overwriteExistingDomain': ?overwriteExistingDomain,
    };
  }

  factory InferenceClusterSsl.fromMap(Map<String, dynamic> map) {
    return InferenceClusterSsl(
      cert: map['cert'] == null ? null : map['cert'] as String,
      cname: map['cname'] == null ? null : map['cname'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      leafDomainLabel: map['leafDomainLabel'] == null ? null : map['leafDomainLabel'] as String,
      overwriteExistingDomain: map['overwriteExistingDomain'] == null ? null : map['overwriteExistingDomain'] as bool,
    );
  }
}

