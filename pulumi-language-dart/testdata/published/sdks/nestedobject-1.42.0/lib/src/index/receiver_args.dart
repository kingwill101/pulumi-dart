// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detail.dart';

/// {@template pulumi_index_receiver_args_doc}
/// The set of arguments for Receiver.
/// {@endtemplate}
/// {@macro pulumi_index_receiver_args_doc}
class ReceiverArgs {
  final pulumi.Input<List<Detail>> details;

  /// Creates a new [ReceiverArgs].
  /// [details] Required.
  const ReceiverArgs({
    required this.details,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': pulumi.Input.mapInputValue<List<Detail>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<Detail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReceiverArgs.fromMap(Map<String, dynamic> map) {
    return ReceiverArgs(
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<Detail>(map['details']!, (value) => Detail.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
