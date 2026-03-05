import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_commitment_args.dart';
import 'get_capacity_commitment_bigqueryreservation_v1beta1_args.dart';
import 'get_capacity_commitment_bigqueryreservation_v1beta1_result.dart';
import 'get_capacity_commitment_result.dart';
import 'get_reservation_args.dart';
import 'get_reservation_bigqueryreservation_v1beta1_args.dart';
import 'get_reservation_bigqueryreservation_v1beta1_result.dart';
import 'get_reservation_result.dart';

/// Returns information about the capacity commitment.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryreservation_v1_get_capacity_commitment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityCommitmentResult> getCapacityCommitment(
  GetCapacityCommitmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1:getCapacityCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityCommitmentResult.fromMap(result);
}

/// Returns information about the reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryreservation_v1_get_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}

/// Returns information about the capacity commitment.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryreservation_v1beta1_get_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityCommitmentBigqueryreservationV1beta1Result> getCapacityCommitmentBigqueryreservationV1beta1(
  GetCapacityCommitmentBigqueryreservationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getCapacityCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityCommitmentBigqueryreservationV1beta1Result.fromMap(result);
}

/// Returns information about the reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryreservation_v1beta1_get_reservation_bigqueryreservation_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationBigqueryreservationV1beta1Result> getReservationBigqueryreservationV1beta1(
  GetReservationBigqueryreservationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryreservation/v1beta1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationBigqueryreservationV1beta1Result.fromMap(result);
}
