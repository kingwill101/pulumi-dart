// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterSecurityProfile {
  /// The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> aaddsResourceId;
  /// A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? clusterUsersGroupDns;
  /// The name of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainName;
  /// The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainUserPassword;
  /// The username of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainUsername;
  /// A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>> ldapsUrls;
  /// The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> msiResourceId;

  /// Creates a new [HadoopClusterSecurityProfile].
  /// [aaddsResourceId] The resource ID of the Azure Active Directory Domain Service. Changing this forces a new resource to be created.
  /// [clusterUsersGroupDns] A list of the distinguished names for the cluster user groups. Changing this forces a new resource to be created.
  /// [domainName] The name of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  /// [domainUserPassword] The user password of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  /// [domainUsername] The username of the Azure Active Directory Domain. Changing this forces a new resource to be created.
  /// [ldapsUrls] A list of the LDAPS URLs to communicate with the Azure Active Directory. Changing this forces a new resource to be created.
  /// [msiResourceId] The User Assigned Identity for the HDInsight Cluster. Changing this forces a new resource to be created.
  HadoopClusterSecurityProfile({
    required this.aaddsResourceId,
    this.clusterUsersGroupDns,
    required this.domainName,
    required this.domainUserPassword,
    required this.domainUsername,
    required this.ldapsUrls,
    required this.msiResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aaddsResourceId': aaddsResourceId,
      'clusterUsersGroupDns': ?clusterUsersGroupDns,
      'domainName': domainName,
      'domainUserPassword': domainUserPassword,
      'domainUsername': domainUsername,
      'ldapsUrls': ldapsUrls,
      'msiResourceId': msiResourceId,
    };
  }

  factory HadoopClusterSecurityProfile.fromMap(Map<String, dynamic> map) {
    return HadoopClusterSecurityProfile(
      aaddsResourceId: (map['aaddsResourceId'] as String).input(),
      clusterUsersGroupDns: map['clusterUsersGroupDns'] == null ? null : ((map['clusterUsersGroupDns']! as List).cast<String>()).input(),
      domainName: (map['domainName'] as String).input(),
      domainUserPassword: (map['domainUserPassword'] as String).input(),
      domainUsername: (map['domainUsername'] as String).input(),
      ldapsUrls: ((map['ldapsUrls'] as List).cast<String>()).input(),
      msiResourceId: (map['msiResourceId'] as String).input(),
    );
  }
}

