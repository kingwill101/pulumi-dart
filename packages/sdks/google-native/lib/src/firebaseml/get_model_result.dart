// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_state_response.dart';
import 'operation_response.dart';
import 'tf_lite_model_response.dart';

/// Result data returned by getModel.
class GetModelResult {
  /// Lists operation ids associated with this model whose status is NOT done.
  final List<OperationResponse> activeOperations;
  /// Timestamp when this model was created in Firebase ML.
  final String createTime;
  /// The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  final String displayName;
  /// See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
  final String etag;
  /// The model_hash will change if a new file is available for download.
  final String modelHash;
  /// The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  final String name;
  /// State common to all model types. Includes publishing and validation information.
  final ModelStateResponse state;
  /// User defined tags which can be used to group/filter models during listing
  final List<String> tags;
  /// A TFLite Model
  final TfLiteModelResponse tfliteModel;
  /// Timestamp when this model was updated in Firebase ML.
  final String updateTime;

  /// Creates a new [GetModelResult].
  /// [activeOperations] Lists operation ids associated with this model whose status is NOT done.
  /// [createTime] Timestamp when this model was created in Firebase ML.
  /// [displayName] The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  /// [etag] See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
  /// [modelHash] The model_hash will change if a new file is available for download.
  /// [name] The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  /// [state] State common to all model types. Includes publishing and validation information.
  /// [tags] User defined tags which can be used to group/filter models during listing
  /// [tfliteModel] A TFLite Model
  /// [updateTime] Timestamp when this model was updated in Firebase ML.
  const GetModelResult({
    required this.activeOperations,
    required this.createTime,
    required this.displayName,
    required this.etag,
    required this.modelHash,
    required this.name,
    required this.state,
    required this.tags,
    required this.tfliteModel,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeOperations': pulumi.Input.encodeList<OperationResponse, Map<String, dynamic>>(activeOperations, (value) => value.toMap()),
      'createTime': createTime,
      'displayName': displayName,
      'etag': etag,
      'modelHash': modelHash,
      'name': name,
      'state': state.toMap(),
      'tags': tags,
      'tfliteModel': tfliteModel.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      activeOperations: pulumi.Input.decodeList<OperationResponse>(map['activeOperations']!, (value) => OperationResponse.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      modelHash: map['modelHash'] as String,
      name: map['name'] as String,
      state: ModelStateResponse.fromMap((map['state']! as Map).cast<String, dynamic>()),
      tags: (map['tags'] as List).cast<String>(),
      tfliteModel: TfLiteModelResponse.fromMap((map['tfliteModel']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

