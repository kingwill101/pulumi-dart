// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_reservation_group_reservation_group_args_doc}
/// The set of arguments for ReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_bigquery_reservation_group_reservation_group_args_doc}
class ReservationGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final pulumi.Input<String?>? location;
  /// The name of the reservation group. This field must only contain alphanumeric characters or dash.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ReservationGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The geographic location where the transfer config should reside.
  /// [name] The name of the reservation group. This field must only contain alphanumeric characters or dash.
  /// [project] The ID of the project in which the resource belongs.
  const ReservationGroupArgs({
    this.deletionPolicy,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReservationGroupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
