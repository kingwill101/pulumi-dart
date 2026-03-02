// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceClusterSsl {
  /// The certificate for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final pulumi.Input<String>? cert;
  /// The cname of the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final pulumi.Input<String>? cname;
  /// The key content for the SSL configuration.Conflicts with `ssl[0].leaf_domain_label`,`ssl[0].overwrite_existing_domain`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final pulumi.Input<String>? key;
  /// The leaf domain label for the SSL configuration. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname`. Changing this forces a new Machine Learning Inference Cluster to be created. Defaults to `""`.
  final pulumi.Input<String>? leafDomainLabel;
  /// Whether or not to overwrite existing leaf domain. Conflicts with `ssl[0].cert`,`ssl[0].key`,`ssl[0].cname` Changing this forces a new Machine Learning Inference Cluster to be created.
  final pulumi.Input<bool>? overwriteExistingDomain;

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
      cert: map['cert'] == null ? null : (map['cert'] as String).input(),
      cname: map['cname'] == null ? null : (map['cname'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      leafDomainLabel: map['leafDomainLabel'] == null ? null : (map['leafDomainLabel'] as String).input(),
      overwriteExistingDomain: map['overwriteExistingDomain'] == null ? null : (map['overwriteExistingDomain'] as bool).input(),
    );
  }
}

