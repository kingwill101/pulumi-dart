// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view.dart';

/// Input properties used for looking up and filtering AuthorizedView resources.
class AuthorizedViewState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// -----
  final pulumi.Input<String?>? deletionPolicy;
  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited.
  /// If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. Note this field configs the deletion protection provided by the API in the backend, and should not be confused with Terraform-side deletion protection.
  final pulumi.Input<String?>? deletionProtection;
  /// The name of the Bigtable instance in which the authorized view belongs.
  final pulumi.Input<String?>? instanceName;
  /// The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  final pulumi.Input<AuthorizedViewSubsetView?>? subsetView;
  /// The name of the Bigtable table in which the authorized view belongs.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [AuthorizedViewState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited.
  /// [instanceName] The name of the Bigtable instance in which the authorized view belongs.
  /// [name] The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [subsetView] An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  /// [tableName] The name of the Bigtable table in which the authorized view belongs.
  const AuthorizedViewState({
    this.deletionPolicy,
    this.deletionProtection,
    this.instanceName,
    this.name,
    this.project,
    this.subsetView,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'instanceName': ?instanceName,
      'name': ?name,
      'project': ?project,
      'subsetView': ?pulumi.Input.mapOptionalInputValue<AuthorizedViewSubsetView, Map<String, dynamic>>(subsetView, (value) => value.toMap()),
      'tableName': ?tableName,
    };
  }

  factory AuthorizedViewState.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subsetView: (() { final guardedValue = map['subsetView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizedViewSubsetView.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
