<#import "template.ftl" as layout>
<#import "password-commons.ftl" as passwordCommons>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
		<div id="wrapperPannello" class="wrapperPannello no-gutter d-flex flex-column justify-content-center align-items-center ">
			<div id="pannelloForm" class="containerComp pannelloForm no-gutter">
				<div id="row_1" class="row">
					<div id="colonnaSx" class="colonna">
						<div id="wrapperImmagine">
							<img src="${url.resourcesPath}/img/logoPass.svg">
						</div>
						<div class="wrapperMessaggio" id="wrapperIstruzioniCambioPassword">
							<h1>Cambio Password</h1>
							<div id="istruzioni-accesso" class="istruzioni">Compila il form per modificare la tua Password</div>
						</div>
					</div>
					<div id="colonnaDx" class="colonna">
						<div id="wrapperColonna">
							<div id="form_wrapper_update_password" class="component floated ">
								<form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
									<div class="${properties.kcFormGroupClass!}">
										<div class="${properties.kcLabelWrapperClass!}">
											<label for="password-new" class="${properties.kcLabelClass!}">${msg("passwordNew")}</label>
										</div>
										<div class="${properties.kcInputWrapperClass!}">
											<div class="${properties.kcInputGroup!}">
												<input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
													   autofocus autocomplete="new-password"
													   aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
												/>
												<button class="pf-c-button pf-m-control" type="button" aria-label="${msg('showPassword')}"
														aria-controls="password-new"  data-password-toggle
														data-label-show="${msg('showPassword')}" data-label-hide="${msg('hidePassword')}">
													<i class="fa fa-eye" aria-hidden="true"></i>
												</button>
											</div>

											<#if messagesPerField.existsError('password')>
												<span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
													${kcSanitize(messagesPerField.get('password'))?no_esc}
												</span>
											</#if>
										</div>
									</div>

									<div class="${properties.kcFormGroupClass!}">
										<div class="${properties.kcLabelWrapperClass!}">
											<label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
										</div>
										<div class="${properties.kcInputWrapperClass!}">
											<div class="${properties.kcInputGroup!}">
												<input type="password" id="password-confirm" name="password-confirm"
													   class="${properties.kcInputClass!}"
													   autocomplete="new-password"
													   aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
												/>
												<button class="pf-c-button pf-m-control" type="button" aria-label="${msg('showPassword')}"
														aria-controls="password-confirm"  data-password-toggle
														data-label-show="${msg('showPassword')}" data-label-hide="${msg('hidePassword')}">
													<i class="fa fa-eye" aria-hidden="true"></i>
												</button>
											</div>

											<#if messagesPerField.existsError('password-confirm')>
												<span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
													${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
												</span>
											</#if>

										</div>
									</div>

									<div class="${properties.kcFormGroupClass!}">
										<@passwordCommons.logoutOtherSessions/>

										<div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
											<#if isAppInitiatedAction??>
												<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
												<button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
											<#else>
												<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
											</#if>
										</div>
									</div>
								</form>
							</div>	
						</div>
					</div>
				</div>
			</div>	
		</div>	
        <script type="module" src="${url.resourcesPath}/js/passwordVisibility.js"></script>
    </#if>
</@layout.registrationLayout>
