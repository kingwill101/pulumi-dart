// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_tls/index.dart' as module_index;
import 'package:pulumi_tls/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final CertRequest = module_index.CertRequest.new;
  final CertRequestArgs = module_index.CertRequestArgs.new;
  final CertRequestState = module_index.CertRequestState.new;
  final CertRequestStateArgs = module_index.CertRequestState.new;
  final CertRequestSubject = module_index.CertRequestSubject.new;
  final CertRequestSubjectArgs = module_index.CertRequestSubject.new;
  final GetCertificateArgs = module_index.GetCertificateArgs.new;
  final GetCertificateCertificate = module_index.GetCertificateCertificate.new;
  final GetCertificateCertificateArgs = module_index.GetCertificateCertificate.new;
  final GetCertificateResult = module_index.GetCertificateResult.new;
  final GetCertificateResultArgs = module_index.GetCertificateResult.new;
  final GetPublicKeyArgs = module_index.GetPublicKeyArgs.new;
  final GetPublicKeyResult = module_index.GetPublicKeyResult.new;
  final GetPublicKeyResultArgs = module_index.GetPublicKeyResult.new;
  final LocallySignedCert = module_index.LocallySignedCert.new;
  final LocallySignedCertArgs = module_index.LocallySignedCertArgs.new;
  final LocallySignedCertState = module_index.LocallySignedCertState.new;
  final LocallySignedCertStateArgs = module_index.LocallySignedCertState.new;
  final PrivateKey = module_index.PrivateKey.new;
  final PrivateKeyArgs = module_index.PrivateKeyArgs.new;
  final PrivateKeyState = module_index.PrivateKeyState.new;
  final PrivateKeyStateArgs = module_index.PrivateKeyState.new;
  final ProviderProxy = module_index.ProviderProxy.new;
  final ProviderProxyArgs = module_index.ProviderProxy.new;
  final SelfSignedCert = module_index.SelfSignedCert.new;
  final SelfSignedCertArgs = module_index.SelfSignedCertArgs.new;
  final SelfSignedCertState = module_index.SelfSignedCertState.new;
  final SelfSignedCertStateArgs = module_index.SelfSignedCertState.new;
  final SelfSignedCertSubject = module_index.SelfSignedCertSubject.new;
  final SelfSignedCertSubjectArgs = module_index.SelfSignedCertSubject.new;
  final getCertificate = module_index.getCertificate;
  final getPublicKey = module_index.getPublicKey;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final ProviderArgs = module_providers.ProviderArgs.new;
  final ProviderTerraformConfigResult = module_providers.ProviderTerraformConfigResult.new;
  final ProviderTerraformConfigResultArgs = module_providers.ProviderTerraformConfigResult.new;
  final TerraformConfigArgs = module_providers.TerraformConfigArgs.new;
  final TerraformConfigResult = module_providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = module_providers.TerraformConfigResult.new;
  final Tls = module_providers.ProviderProvider.new;
  final TlsArgs = module_providers.ProviderArgs.new;
  final terraformConfig = module_providers.terraformConfig;
}
