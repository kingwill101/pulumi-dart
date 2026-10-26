import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_artifact_aiplatform_v1beta1_args.dart';
import 'get_artifact_aiplatform_v1beta1_result.dart';
import 'get_artifact_args.dart';
import 'get_artifact_result.dart';
import 'get_batch_prediction_job_aiplatform_v1beta1_args.dart';
import 'get_batch_prediction_job_aiplatform_v1beta1_result.dart';
import 'get_batch_prediction_job_args.dart';
import 'get_batch_prediction_job_result.dart';
import 'get_context_aiplatform_v1beta1_args.dart';
import 'get_context_aiplatform_v1beta1_result.dart';
import 'get_context_args.dart';
import 'get_context_result.dart';
import 'get_custom_job_aiplatform_v1beta1_args.dart';
import 'get_custom_job_aiplatform_v1beta1_result.dart';
import 'get_custom_job_args.dart';
import 'get_custom_job_result.dart';
import 'get_data_labeling_job_aiplatform_v1beta1_args.dart';
import 'get_data_labeling_job_aiplatform_v1beta1_result.dart';
import 'get_data_labeling_job_args.dart';
import 'get_data_labeling_job_result.dart';
import 'get_dataset_aiplatform_v1beta1_args.dart';
import 'get_dataset_aiplatform_v1beta1_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_dataset_version_aiplatform_v1beta1_args.dart';
import 'get_dataset_version_aiplatform_v1beta1_result.dart';
import 'get_dataset_version_args.dart';
import 'get_dataset_version_result.dart';
import 'get_deployment_resource_pool_aiplatform_v1beta1_args.dart';
import 'get_deployment_resource_pool_aiplatform_v1beta1_result.dart';
import 'get_deployment_resource_pool_args.dart';
import 'get_deployment_resource_pool_result.dart';
import 'get_endpoint_aiplatform_v1beta1_args.dart';
import 'get_endpoint_aiplatform_v1beta1_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_iam_policy_args.dart';
import 'get_endpoint_iam_policy_result.dart';
import 'get_endpoint_result.dart';
import 'get_entity_type_aiplatform_v1beta1_args.dart';
import 'get_entity_type_aiplatform_v1beta1_result.dart';
import 'get_entity_type_args.dart';
import 'get_entity_type_result.dart';
import 'get_execution_aiplatform_v1beta1_args.dart';
import 'get_execution_aiplatform_v1beta1_result.dart';
import 'get_execution_args.dart';
import 'get_execution_result.dart';
import 'get_experiment_aiplatform_v1beta1_args.dart';
import 'get_experiment_aiplatform_v1beta1_result.dart';
import 'get_experiment_args.dart';
import 'get_experiment_result.dart';
import 'get_feature_group_aiplatform_v1beta1_args.dart';
import 'get_feature_group_aiplatform_v1beta1_result.dart';
import 'get_feature_group_args.dart';
import 'get_feature_group_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_group_feature_aiplatform_v1beta1_result.dart';
import 'get_feature_group_feature_args.dart';
import 'get_feature_group_feature_result.dart';
import 'get_feature_group_result.dart';
import 'get_feature_online_store_aiplatform_v1beta1_args.dart';
import 'get_feature_online_store_aiplatform_v1beta1_result.dart';
import 'get_feature_online_store_args.dart';
import 'get_feature_online_store_result.dart';
import 'get_feature_store_feature_aiplatform_v1beta1_args.dart';
import 'get_feature_store_feature_aiplatform_v1beta1_result.dart';
import 'get_feature_store_feature_args.dart';
import 'get_feature_store_feature_result.dart';
import 'get_feature_view_aiplatform_v1beta1_args.dart';
import 'get_feature_view_aiplatform_v1beta1_result.dart';
import 'get_feature_view_args.dart';
import 'get_feature_view_result.dart';
import 'get_featurestore_aiplatform_v1beta1_args.dart';
import 'get_featurestore_aiplatform_v1beta1_result.dart';
import 'get_featurestore_args.dart';
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_featurestore_entity_type_iam_policy_args.dart';
import 'get_featurestore_entity_type_iam_policy_result.dart';
import 'get_featurestore_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_featurestore_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_featurestore_iam_policy_args.dart';
import 'get_featurestore_iam_policy_result.dart';
import 'get_featurestore_result.dart';
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_args.dart';
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_result.dart';
import 'get_hyperparameter_tuning_job_args.dart';
import 'get_hyperparameter_tuning_job_result.dart';
import 'get_index_aiplatform_v1beta1_args.dart';
import 'get_index_aiplatform_v1beta1_result.dart';
import 'get_index_args.dart';
import 'get_index_endpoint_aiplatform_v1beta1_args.dart';
import 'get_index_endpoint_aiplatform_v1beta1_result.dart';
import 'get_index_endpoint_args.dart';
import 'get_index_endpoint_result.dart';
import 'get_index_result.dart';
import 'get_metadata_schema_aiplatform_v1beta1_args.dart';
import 'get_metadata_schema_aiplatform_v1beta1_result.dart';
import 'get_metadata_schema_args.dart';
import 'get_metadata_schema_result.dart';
import 'get_metadata_store_aiplatform_v1beta1_args.dart';
import 'get_metadata_store_aiplatform_v1beta1_result.dart';
import 'get_metadata_store_args.dart';
import 'get_metadata_store_result.dart';
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_args.dart';
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_result.dart';
import 'get_model_deployment_monitoring_job_args.dart';
import 'get_model_deployment_monitoring_job_result.dart';
import 'get_model_iam_policy_args.dart';
import 'get_model_iam_policy_result.dart';
import 'get_nas_job_aiplatform_v1beta1_args.dart';
import 'get_nas_job_aiplatform_v1beta1_result.dart';
import 'get_nas_job_args.dart';
import 'get_nas_job_result.dart';
import 'get_notebook_runtime_template_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_aiplatform_v1beta1_result.dart';
import 'get_notebook_runtime_template_args.dart';
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_result.dart';
import 'get_notebook_runtime_template_iam_policy_args.dart';
import 'get_notebook_runtime_template_iam_policy_result.dart';
import 'get_notebook_runtime_template_result.dart';
import 'get_persistent_resource_args.dart';
import 'get_persistent_resource_result.dart';
import 'get_pipeline_job_aiplatform_v1beta1_args.dart';
import 'get_pipeline_job_aiplatform_v1beta1_result.dart';
import 'get_pipeline_job_args.dart';
import 'get_pipeline_job_result.dart';
import 'get_run_aiplatform_v1beta1_args.dart';
import 'get_run_aiplatform_v1beta1_result.dart';
import 'get_run_args.dart';
import 'get_run_result.dart';
import 'get_schedule_aiplatform_v1beta1_args.dart';
import 'get_schedule_aiplatform_v1beta1_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_specialist_pool_aiplatform_v1beta1_args.dart';
import 'get_specialist_pool_aiplatform_v1beta1_result.dart';
import 'get_specialist_pool_args.dart';
import 'get_specialist_pool_result.dart';
import 'get_study_aiplatform_v1beta1_args.dart';
import 'get_study_aiplatform_v1beta1_result.dart';
import 'get_study_args.dart';
import 'get_study_result.dart';
import 'get_tensorboard_aiplatform_v1beta1_args.dart';
import 'get_tensorboard_aiplatform_v1beta1_result.dart';
import 'get_tensorboard_args.dart';
import 'get_tensorboard_result.dart';
import 'get_time_series_aiplatform_v1beta1_args.dart';
import 'get_time_series_aiplatform_v1beta1_result.dart';
import 'get_time_series_args.dart';
import 'get_time_series_result.dart';
import 'get_training_pipeline_aiplatform_v1beta1_args.dart';
import 'get_training_pipeline_aiplatform_v1beta1_result.dart';
import 'get_training_pipeline_args.dart';
import 'get_training_pipeline_result.dart';
import 'get_trial_aiplatform_v1beta1_args.dart';
import 'get_trial_aiplatform_v1beta1_result.dart';
import 'get_trial_args.dart';
import 'get_trial_result.dart';

/// Retrieves a specific Artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_artifact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactResult> getArtifact(
  GetArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactResult.fromMap(result);
}

pulumi.Output<GetArtifactResult> getArtifactOutput(
  GetArtifactArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactResult.fromMap);
}

/// Gets a BatchPredictionJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_batch_prediction_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchPredictionJobResult> getBatchPredictionJob(
  GetBatchPredictionJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobResult.fromMap(result);
}

pulumi.Output<GetBatchPredictionJobResult> getBatchPredictionJobOutput(
  GetBatchPredictionJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getBatchPredictionJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBatchPredictionJobResult.fromMap);
}

/// Retrieves a specific Context.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_context_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextResult> getContext(
  GetContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextResult.fromMap(result);
}

pulumi.Output<GetContextResult> getContextOutput(
  GetContextArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getContext',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContextResult.fromMap);
}

/// Gets a CustomJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_custom_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomJobResult> getCustomJob(
  GetCustomJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobResult.fromMap(result);
}

pulumi.Output<GetCustomJobResult> getCustomJobOutput(
  GetCustomJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getCustomJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomJobResult.fromMap);
}

/// Gets a DataLabelingJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_data_labeling_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLabelingJobResult> getDataLabelingJob(
  GetDataLabelingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobResult.fromMap(result);
}

pulumi.Output<GetDataLabelingJobResult> getDataLabelingJobOutput(
  GetDataLabelingJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataLabelingJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataLabelingJobResult.fromMap);
}

/// Gets a Dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

pulumi.Output<GetDatasetResult> getDatasetOutput(
  GetDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetResult.fromMap);
}

/// Gets a Dataset version.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_dataset_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetVersionResult> getDatasetVersion(
  GetDatasetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionResult.fromMap(result);
}

pulumi.Output<GetDatasetVersionResult> getDatasetVersionOutput(
  GetDatasetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDatasetVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetVersionResult.fromMap);
}

/// Get a DeploymentResourcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_deployment_resource_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResourcePoolResult> getDeploymentResourcePool(
  GetDeploymentResourcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolResult.fromMap(result);
}

pulumi.Output<GetDeploymentResourcePoolResult> getDeploymentResourcePoolOutput(
  GetDeploymentResourcePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDeploymentResourcePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResourcePoolResult.fromMap);
}

/// Gets an Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

pulumi.Output<GetEndpointResult> getEndpointOutput(
  GetEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointResult.fromMap);
}

/// Gets details of a single EntityType.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_entity_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeResult> getEntityType(
  GetEntityTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult.fromMap(result);
}

pulumi.Output<GetEntityTypeResult> getEntityTypeOutput(
  GetEntityTypeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeResult.fromMap);
}

/// Retrieves a specific Execution.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}

pulumi.Output<GetExecutionResult> getExecutionOutput(
  GetExecutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExecution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExecutionResult.fromMap);
}

/// Gets a TensorboardExperiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_experiment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}

pulumi.Output<GetExperimentResult> getExperimentOutput(
  GetExperimentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExperiment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExperimentResult.fromMap);
}

/// Gets details of a single FeatureGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupResult> getFeatureGroup(
  GetFeatureGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupResult.fromMap(result);
}

pulumi.Output<GetFeatureGroupResult> getFeatureGroupOutput(
  GetFeatureGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureGroupResult.fromMap);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_group_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupFeatureResult> getFeatureGroupFeature(
  GetFeatureGroupFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureResult.fromMap(result);
}

pulumi.Output<GetFeatureGroupFeatureResult> getFeatureGroupFeatureOutput(
  GetFeatureGroupFeatureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureGroupFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureGroupFeatureResult.fromMap);
}

/// Gets details of a single FeatureOnlineStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_online_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureOnlineStoreResult> getFeatureOnlineStore(
  GetFeatureOnlineStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreResult.fromMap(result);
}

pulumi.Output<GetFeatureOnlineStoreResult> getFeatureOnlineStoreOutput(
  GetFeatureOnlineStoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureOnlineStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureOnlineStoreResult.fromMap);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_store_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureStoreFeatureResult> getFeatureStoreFeature(
  GetFeatureStoreFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureStoreFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureResult.fromMap(result);
}

pulumi.Output<GetFeatureStoreFeatureResult> getFeatureStoreFeatureOutput(
  GetFeatureStoreFeatureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureStoreFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureStoreFeatureResult.fromMap);
}

/// Gets details of a single FeatureView.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_feature_view_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureViewResult> getFeatureView(
  GetFeatureViewArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewResult.fromMap(result);
}

pulumi.Output<GetFeatureViewResult> getFeatureViewOutput(
  GetFeatureViewArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeatureView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureViewResult.fromMap);
}

/// Gets details of a single Featurestore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreResult> getFeaturestore(
  GetFeaturestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreResult.fromMap(result);
}

pulumi.Output<GetFeaturestoreResult> getFeaturestoreOutput(
  GetFeaturestoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_entity_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityTypeIamPolicyResult> getFeaturestoreEntityTypeIamPolicy(
  GetFeaturestoreEntityTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetFeaturestoreEntityTypeIamPolicyResult> getFeaturestoreEntityTypeIamPolicyOutput(
  GetFeaturestoreEntityTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreEntityTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreEntityTypeIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_featurestore_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreIamPolicyResult> getFeaturestoreIamPolicy(
  GetFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreIamPolicyResult.fromMap(result);
}

pulumi.Output<GetFeaturestoreIamPolicyResult> getFeaturestoreIamPolicyOutput(
  GetFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreIamPolicyResult.fromMap);
}

/// Gets a HyperparameterTuningJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_hyperparameter_tuning_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperparameterTuningJobResult> getHyperparameterTuningJob(
  GetHyperparameterTuningJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getHyperparameterTuningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobResult.fromMap(result);
}

pulumi.Output<GetHyperparameterTuningJobResult> getHyperparameterTuningJobOutput(
  GetHyperparameterTuningJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getHyperparameterTuningJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHyperparameterTuningJobResult.fromMap);
}

/// Gets an Index.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}

pulumi.Output<GetIndexResult> getIndexOutput(
  GetIndexArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndex',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIndexResult.fromMap);
}

/// Gets an IndexEndpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_index_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexEndpointResult> getIndexEndpoint(
  GetIndexEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointResult.fromMap(result);
}

pulumi.Output<GetIndexEndpointResult> getIndexEndpointOutput(
  GetIndexEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getIndexEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIndexEndpointResult.fromMap);
}

/// Retrieves a specific MetadataSchema.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_metadata_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataSchemaResult> getMetadataSchema(
  GetMetadataSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaResult.fromMap(result);
}

pulumi.Output<GetMetadataSchemaResult> getMetadataSchemaOutput(
  GetMetadataSchemaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataSchemaResult.fromMap);
}

/// Retrieves a specific MetadataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_metadata_store_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataStoreResult> getMetadataStore(
  GetMetadataStoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreResult.fromMap(result);
}

pulumi.Output<GetMetadataStoreResult> getMetadataStoreOutput(
  GetMetadataStoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getMetadataStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataStoreResult.fromMap);
}

/// Gets a ModelDeploymentMonitoringJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_model_deployment_monitoring_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelDeploymentMonitoringJobResult> getModelDeploymentMonitoringJob(
  GetModelDeploymentMonitoringJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobResult.fromMap(result);
}

pulumi.Output<GetModelDeploymentMonitoringJobResult> getModelDeploymentMonitoringJobOutput(
  GetModelDeploymentMonitoringJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getModelDeploymentMonitoringJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelDeploymentMonitoringJobResult.fromMap);
}

/// Gets a NasJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_nas_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasJobResult> getNasJob(
  GetNasJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobResult.fromMap(result);
}

pulumi.Output<GetNasJobResult> getNasJobOutput(
  GetNasJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNasJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNasJobResult.fromMap);
}

/// Gets a NotebookRuntimeTemplate.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateResult> getNotebookRuntimeTemplate(
  GetNotebookRuntimeTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateResult.fromMap(result);
}

pulumi.Output<GetNotebookRuntimeTemplateResult> getNotebookRuntimeTemplateOutput(
  GetNotebookRuntimeTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotebookRuntimeTemplateResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateIamPolicyResult> getNotebookRuntimeTemplateIamPolicy(
  GetNotebookRuntimeTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetNotebookRuntimeTemplateIamPolicyResult> getNotebookRuntimeTemplateIamPolicyOutput(
  GetNotebookRuntimeTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotebookRuntimeTemplateIamPolicyResult.fromMap);
}

/// Gets a PipelineJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_pipeline_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineJobResult> getPipelineJob(
  GetPipelineJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobResult.fromMap(result);
}

pulumi.Output<GetPipelineJobResult> getPipelineJobOutput(
  GetPipelineJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getPipelineJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineJobResult.fromMap);
}

/// Gets a TensorboardRun.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunResult> getRun(
  GetRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunResult.fromMap(result);
}

pulumi.Output<GetRunResult> getRunOutput(
  GetRunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getRun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRunResult.fromMap);
}

/// Gets a Schedule.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

pulumi.Output<GetScheduleResult> getScheduleOutput(
  GetScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduleResult.fromMap);
}

/// Gets a SpecialistPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_specialist_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpecialistPoolResult> getSpecialistPool(
  GetSpecialistPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSpecialistPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolResult.fromMap(result);
}

pulumi.Output<GetSpecialistPoolResult> getSpecialistPoolOutput(
  GetSpecialistPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSpecialistPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpecialistPoolResult.fromMap);
}

/// Gets a Study by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_study_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudyResult> getStudy(
  GetStudyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyResult.fromMap(result);
}

pulumi.Output<GetStudyResult> getStudyOutput(
  GetStudyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getStudy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStudyResult.fromMap);
}

/// Gets a Tensorboard.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_tensorboard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTensorboardResult> getTensorboard(
  GetTensorboardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardResult.fromMap(result);
}

pulumi.Output<GetTensorboardResult> getTensorboardOutput(
  GetTensorboardArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTensorboard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTensorboardResult.fromMap);
}

/// Gets a TensorboardTimeSeries.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_time_series_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTimeSeriesResult> getTimeSeries(
  GetTimeSeriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesResult.fromMap(result);
}

pulumi.Output<GetTimeSeriesResult> getTimeSeriesOutput(
  GetTimeSeriesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTimeSeries',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTimeSeriesResult.fromMap);
}

/// Gets a TrainingPipeline.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_training_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrainingPipelineResult> getTrainingPipeline(
  GetTrainingPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineResult.fromMap(result);
}

pulumi.Output<GetTrainingPipelineResult> getTrainingPipelineOutput(
  GetTrainingPipelineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrainingPipeline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrainingPipelineResult.fromMap);
}

/// Gets a Trial.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1_get_trial_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrialResult> getTrial(
  GetTrialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialResult.fromMap(result);
}

pulumi.Output<GetTrialResult> getTrialOutput(
  GetTrialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrial',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrialResult.fromMap);
}

/// Retrieves a specific Artifact.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArtifactAiplatformV1beta1Result> getArtifactAiplatformV1beta1(
  GetArtifactAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArtifactAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetArtifactAiplatformV1beta1Result> getArtifactAiplatformV1beta1Output(
  GetArtifactAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getArtifact',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArtifactAiplatformV1beta1Result.fromMap);
}

/// Gets a BatchPredictionJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchPredictionJobAiplatformV1beta1Result> getBatchPredictionJobAiplatformV1beta1(
  GetBatchPredictionJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetBatchPredictionJobAiplatformV1beta1Result> getBatchPredictionJobAiplatformV1beta1Output(
  GetBatchPredictionJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getBatchPredictionJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBatchPredictionJobAiplatformV1beta1Result.fromMap);
}

/// Retrieves a specific Context.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContextAiplatformV1beta1Result> getContextAiplatformV1beta1(
  GetContextAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetContextAiplatformV1beta1Result> getContextAiplatformV1beta1Output(
  GetContextAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getContext',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContextAiplatformV1beta1Result.fromMap);
}

/// Gets a CustomJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomJobAiplatformV1beta1Result> getCustomJobAiplatformV1beta1(
  GetCustomJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetCustomJobAiplatformV1beta1Result> getCustomJobAiplatformV1beta1Output(
  GetCustomJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getCustomJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomJobAiplatformV1beta1Result.fromMap);
}

/// Gets a DataLabelingJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_data_labeling_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataLabelingJobAiplatformV1beta1Result> getDataLabelingJobAiplatformV1beta1(
  GetDataLabelingJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataLabelingJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetDataLabelingJobAiplatformV1beta1Result> getDataLabelingJobAiplatformV1beta1Output(
  GetDataLabelingJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataLabelingJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataLabelingJobAiplatformV1beta1Result.fromMap);
}

/// Gets a Dataset.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_dataset_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetAiplatformV1beta1Result> getDatasetAiplatformV1beta1(
  GetDatasetAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetDatasetAiplatformV1beta1Result> getDatasetAiplatformV1beta1Output(
  GetDatasetAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetAiplatformV1beta1Result.fromMap);
}

/// Gets a Dataset version.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_dataset_version_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetVersionAiplatformV1beta1Result> getDatasetVersionAiplatformV1beta1(
  GetDatasetVersionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDatasetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetVersionAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetDatasetVersionAiplatformV1beta1Result> getDatasetVersionAiplatformV1beta1Output(
  GetDatasetVersionAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDatasetVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatasetVersionAiplatformV1beta1Result.fromMap);
}

/// Get a DeploymentResourcePool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_deployment_resource_pool_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResourcePoolAiplatformV1beta1Result> getDeploymentResourcePoolAiplatformV1beta1(
  GetDeploymentResourcePoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetDeploymentResourcePoolAiplatformV1beta1Result> getDeploymentResourcePoolAiplatformV1beta1Output(
  GetDeploymentResourcePoolAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDeploymentResourcePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResourcePoolAiplatformV1beta1Result.fromMap);
}

/// Gets an Endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_endpoint_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAiplatformV1beta1Result> getEndpointAiplatformV1beta1(
  GetEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetEndpointAiplatformV1beta1Result> getEndpointAiplatformV1beta1Output(
  GetEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointAiplatformV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_endpoint_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointIamPolicyResult> getEndpointIamPolicy(
  GetEndpointIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpointIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEndpointIamPolicyResult> getEndpointIamPolicyOutput(
  GetEndpointIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpointIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointIamPolicyResult.fromMap);
}

/// Gets details of a single EntityType.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_entity_type_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityTypeAiplatformV1beta1Result> getEntityTypeAiplatformV1beta1(
  GetEntityTypeAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetEntityTypeAiplatformV1beta1Result> getEntityTypeAiplatformV1beta1Output(
  GetEntityTypeAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEntityType',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityTypeAiplatformV1beta1Result.fromMap);
}

/// Retrieves a specific Execution.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_execution_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionAiplatformV1beta1Result> getExecutionAiplatformV1beta1(
  GetExecutionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetExecutionAiplatformV1beta1Result> getExecutionAiplatformV1beta1Output(
  GetExecutionAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExecution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExecutionAiplatformV1beta1Result.fromMap);
}

/// Gets a TensorboardExperiment.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_experiment_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperimentAiplatformV1beta1Result> getExperimentAiplatformV1beta1(
  GetExperimentAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetExperimentAiplatformV1beta1Result> getExperimentAiplatformV1beta1Output(
  GetExperimentAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExperiment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExperimentAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single FeatureGroup.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_group_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupAiplatformV1beta1Result> getFeatureGroupAiplatformV1beta1(
  GetFeatureGroupAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeatureGroupAiplatformV1beta1Result> getFeatureGroupAiplatformV1beta1Output(
  GetFeatureGroupAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureGroupAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_group_feature_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureGroupFeatureAiplatformV1beta1Result> getFeatureGroupFeatureAiplatformV1beta1(
  GetFeatureGroupFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroupFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureGroupFeatureAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeatureGroupFeatureAiplatformV1beta1Result> getFeatureGroupFeatureAiplatformV1beta1Output(
  GetFeatureGroupFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureGroupFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureGroupFeatureAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single FeatureOnlineStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_online_store_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureOnlineStoreAiplatformV1beta1Result> getFeatureOnlineStoreAiplatformV1beta1(
  GetFeatureOnlineStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureOnlineStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeatureOnlineStoreAiplatformV1beta1Result> getFeatureOnlineStoreAiplatformV1beta1Output(
  GetFeatureOnlineStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureOnlineStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single Feature.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_store_feature_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureStoreFeatureAiplatformV1beta1Result> getFeatureStoreFeatureAiplatformV1beta1(
  GetFeatureStoreFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureStoreFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureStoreFeatureAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeatureStoreFeatureAiplatformV1beta1Result> getFeatureStoreFeatureAiplatformV1beta1Output(
  GetFeatureStoreFeatureAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureStoreFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureStoreFeatureAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single FeatureView.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_feature_view_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeatureViewAiplatformV1beta1Result> getFeatureViewAiplatformV1beta1(
  GetFeatureViewAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureView',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureViewAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeatureViewAiplatformV1beta1Result> getFeatureViewAiplatformV1beta1Output(
  GetFeatureViewAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeatureView',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeatureViewAiplatformV1beta1Result.fromMap);
}

/// Gets details of a single Featurestore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreAiplatformV1beta1Result> getFeaturestoreAiplatformV1beta1(
  GetFeaturestoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeaturestoreAiplatformV1beta1Result> getFeaturestoreAiplatformV1beta1Output(
  GetFeaturestoreAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreAiplatformV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result> getFeaturestoreEntityTypeIamPolicyAiplatformV1beta1(
  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result> getFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Output(
  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreEntityTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_featurestore_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreIamPolicyAiplatformV1beta1Result> getFeaturestoreIamPolicyAiplatformV1beta1(
  GetFeaturestoreIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreIamPolicyAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetFeaturestoreIamPolicyAiplatformV1beta1Result> getFeaturestoreIamPolicyAiplatformV1beta1Output(
  GetFeaturestoreIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreIamPolicyAiplatformV1beta1Result.fromMap);
}

/// Gets a HyperparameterTuningJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperparameterTuningJobAiplatformV1beta1Result> getHyperparameterTuningJobAiplatformV1beta1(
  GetHyperparameterTuningJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getHyperparameterTuningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetHyperparameterTuningJobAiplatformV1beta1Result> getHyperparameterTuningJobAiplatformV1beta1Output(
  GetHyperparameterTuningJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getHyperparameterTuningJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHyperparameterTuningJobAiplatformV1beta1Result.fromMap);
}

/// Gets an Index.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_index_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexAiplatformV1beta1Result> getIndexAiplatformV1beta1(
  GetIndexAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetIndexAiplatformV1beta1Result> getIndexAiplatformV1beta1Output(
  GetIndexAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndex',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIndexAiplatformV1beta1Result.fromMap);
}

/// Gets an IndexEndpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_index_endpoint_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexEndpointAiplatformV1beta1Result> getIndexEndpointAiplatformV1beta1(
  GetIndexEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetIndexEndpointAiplatformV1beta1Result> getIndexEndpointAiplatformV1beta1Output(
  GetIndexEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndexEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIndexEndpointAiplatformV1beta1Result.fromMap);
}

/// Retrieves a specific MetadataSchema.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataSchemaAiplatformV1beta1Result> getMetadataSchemaAiplatformV1beta1(
  GetMetadataSchemaAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataSchemaAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetMetadataSchemaAiplatformV1beta1Result> getMetadataSchemaAiplatformV1beta1Output(
  GetMetadataSchemaAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataSchema',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataSchemaAiplatformV1beta1Result.fromMap);
}

/// Retrieves a specific MetadataStore.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_metadata_store_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataStoreAiplatformV1beta1Result> getMetadataStoreAiplatformV1beta1(
  GetMetadataStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataStore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataStoreAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetMetadataStoreAiplatformV1beta1Result> getMetadataStoreAiplatformV1beta1Output(
  GetMetadataStoreAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getMetadataStore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataStoreAiplatformV1beta1Result.fromMap);
}

/// Gets a ModelDeploymentMonitoringJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_model_deployment_monitoring_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelDeploymentMonitoringJobAiplatformV1beta1Result> getModelDeploymentMonitoringJobAiplatformV1beta1(
  GetModelDeploymentMonitoringJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetModelDeploymentMonitoringJobAiplatformV1beta1Result> getModelDeploymentMonitoringJobAiplatformV1beta1Output(
  GetModelDeploymentMonitoringJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelDeploymentMonitoringJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelDeploymentMonitoringJobAiplatformV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_model_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelIamPolicyResult> getModelIamPolicy(
  GetModelIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelIamPolicyResult.fromMap(result);
}

pulumi.Output<GetModelIamPolicyResult> getModelIamPolicyOutput(
  GetModelIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelIamPolicyResult.fromMap);
}

/// Gets a NasJob
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_nas_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNasJobAiplatformV1beta1Result> getNasJobAiplatformV1beta1(
  GetNasJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNasJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNasJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetNasJobAiplatformV1beta1Result> getNasJobAiplatformV1beta1Output(
  GetNasJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNasJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNasJobAiplatformV1beta1Result.fromMap);
}

/// Gets a NotebookRuntimeTemplate.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateAiplatformV1beta1Result> getNotebookRuntimeTemplateAiplatformV1beta1(
  GetNotebookRuntimeTemplateAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetNotebookRuntimeTemplateAiplatformV1beta1Result> getNotebookRuntimeTemplateAiplatformV1beta1Output(
  GetNotebookRuntimeTemplateAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result> getNotebookRuntimeTemplateIamPolicyAiplatformV1beta1(
  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result> getNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Output(
  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result.fromMap);
}

/// Gets a PersistentResource.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_persistent_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPersistentResourceResult> getPersistentResource(
  GetPersistentResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPersistentResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPersistentResourceResult.fromMap(result);
}

pulumi.Output<GetPersistentResourceResult> getPersistentResourceOutput(
  GetPersistentResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPersistentResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPersistentResourceResult.fromMap);
}

/// Gets a PipelineJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_pipeline_job_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineJobAiplatformV1beta1Result> getPipelineJobAiplatformV1beta1(
  GetPipelineJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetPipelineJobAiplatformV1beta1Result> getPipelineJobAiplatformV1beta1Output(
  GetPipelineJobAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPipelineJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineJobAiplatformV1beta1Result.fromMap);
}

/// Gets a TensorboardRun.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_run_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunAiplatformV1beta1Result> getRunAiplatformV1beta1(
  GetRunAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetRunAiplatformV1beta1Result> getRunAiplatformV1beta1Output(
  GetRunAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getRun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRunAiplatformV1beta1Result.fromMap);
}

/// Gets a Schedule.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_schedule_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleAiplatformV1beta1Result> getScheduleAiplatformV1beta1(
  GetScheduleAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetScheduleAiplatformV1beta1Result> getScheduleAiplatformV1beta1Output(
  GetScheduleAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduleAiplatformV1beta1Result.fromMap);
}

/// Gets a SpecialistPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_specialist_pool_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpecialistPoolAiplatformV1beta1Result> getSpecialistPoolAiplatformV1beta1(
  GetSpecialistPoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSpecialistPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpecialistPoolAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetSpecialistPoolAiplatformV1beta1Result> getSpecialistPoolAiplatformV1beta1Output(
  GetSpecialistPoolAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSpecialistPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpecialistPoolAiplatformV1beta1Result.fromMap);
}

/// Gets a Study by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudyAiplatformV1beta1Result> getStudyAiplatformV1beta1(
  GetStudyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getStudy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudyAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetStudyAiplatformV1beta1Result> getStudyAiplatformV1beta1Output(
  GetStudyAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getStudy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStudyAiplatformV1beta1Result.fromMap);
}

/// Gets a Tensorboard.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_tensorboard_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTensorboardAiplatformV1beta1Result> getTensorboardAiplatformV1beta1(
  GetTensorboardAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTensorboard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTensorboardAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetTensorboardAiplatformV1beta1Result> getTensorboardAiplatformV1beta1Output(
  GetTensorboardAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTensorboard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTensorboardAiplatformV1beta1Result.fromMap);
}

/// Gets a TensorboardTimeSeries.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_time_series_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTimeSeriesAiplatformV1beta1Result> getTimeSeriesAiplatformV1beta1(
  GetTimeSeriesAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetTimeSeriesAiplatformV1beta1Result> getTimeSeriesAiplatformV1beta1Output(
  GetTimeSeriesAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTimeSeries',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTimeSeriesAiplatformV1beta1Result.fromMap);
}

/// Gets a TrainingPipeline.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_training_pipeline_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrainingPipelineAiplatformV1beta1Result> getTrainingPipelineAiplatformV1beta1(
  GetTrainingPipelineAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetTrainingPipelineAiplatformV1beta1Result> getTrainingPipelineAiplatformV1beta1Output(
  GetTrainingPipelineAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrainingPipeline',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrainingPipelineAiplatformV1beta1Result.fromMap);
}

/// Gets a Trial.
/// [args] Arguments passed to this invoke. {@macro pulumi_aiplatform_v1beta1_get_trial_aiplatform_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrialAiplatformV1beta1Result> getTrialAiplatformV1beta1(
  GetTrialAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrial',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrialAiplatformV1beta1Result.fromMap(result);
}

pulumi.Output<GetTrialAiplatformV1beta1Result> getTrialAiplatformV1beta1Output(
  GetTrialAiplatformV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrial',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrialAiplatformV1beta1Result.fromMap);
}
