// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineWsfcDomainCredential {
  /// The account password used for creating cluster.
  final String clusterBootstrapAccountPassword;
  /// The account password used for operating cluster.
  final String clusterOperatorAccountPassword;
  /// The account password under which SQL service will run on all participating SQL virtual machines in the cluster.
  final String sqlServiceAccountPassword;

  /// Creates a new [VirtualMachineWsfcDomainCredential].
  /// [clusterBootstrapAccountPassword] The account password used for creating cluster.
  /// [clusterOperatorAccountPassword] The account password used for operating cluster.
  /// [sqlServiceAccountPassword] The account password under which SQL service will run on all participating SQL virtual machines in the cluster.
  VirtualMachineWsfcDomainCredential({
    required this.clusterBootstrapAccountPassword,
    required this.clusterOperatorAccountPassword,
    required this.sqlServiceAccountPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccountPassword': clusterBootstrapAccountPassword,
      'clusterOperatorAccountPassword': clusterOperatorAccountPassword,
      'sqlServiceAccountPassword': sqlServiceAccountPassword,
    };
  }

  factory VirtualMachineWsfcDomainCredential.fromMap(Map<String, dynamic> map) {
    return VirtualMachineWsfcDomainCredential(
      clusterBootstrapAccountPassword: map['clusterBootstrapAccountPassword'] as String,
      clusterOperatorAccountPassword: map['clusterOperatorAccountPassword'] as String,
      sqlServiceAccountPassword: map['sqlServiceAccountPassword'] as String,
    );
  }
}

