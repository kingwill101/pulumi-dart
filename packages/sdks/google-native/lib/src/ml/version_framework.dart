/// Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).
enum VersionFramework {
  frameworkUnspecified("FRAMEWORK_UNSPECIFIED"),
  tensorflow("TENSORFLOW"),
  scikitLearn("SCIKIT_LEARN"),
  xgboost("XGBOOST");

  const VersionFramework(this.wireValue);
  final String wireValue;

  static VersionFramework fromValue(String value) {
    for (final item in VersionFramework.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionFramework value: $value');
  }
}
