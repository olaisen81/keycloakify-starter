<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
		<div id="wrapperPannello" class="wrapperPannello no-gutter d-flex flex-column justify-content-center align-items-center ">
			<div id="pannelloForm" class="containerComp pannelloForm no-gutter">
				<div id="row_1" class="row">
					<div id="colonnaSx" class="colonna">
						<div id="wrapperImmagine">
							<img src="${url.resourcesPath}/img/logoPass.svg">
						</div>
						<div class="wrapperMessaggio" id="wrapperIstruzioni">
							<h1>Password dimenticata?</h1>
							<div id="istruzioni-accesso" class="istruzioni">Inserisci il tuo username o l'indirizzo email e ti manderemo le istruzioni per creare una nuova password.</div>
					</div>
					</div>
					<div id="colonnaDx" class="colonna">   
						<div id="wrapperColonna">
							<div id="form_wrapper_reset_password" class="component floated ">
								<form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
									<div class="${properties.kcFormGroupClass!}">
										<div class="${properties.kcLabelWrapperClass!}">
											<label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
										</div>
										<div class="${properties.kcInputWrapperClass!}">
											<input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${(auth.attemptedUsername!'')}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
											<#if messagesPerField.existsError('username')>
												<span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
															${kcSanitize(messagesPerField.get('username'))?no_esc}
												</span>
											</#if>
										</div>
									</div>
									<div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
										<div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
											<div class="${properties.kcFormOptionsWrapperClass!}">
												<span><a class="linkRecupero" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
											</div>
										</div>

										<div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
											<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
    <#elseif section = "info" >
        <#if realm.duplicateEmailsAllowed>
            ${msg("emailInstructionUsername")}
        <#else>
            ${msg("emailInstruction")}
        </#if>
    </#if>
</@layout.registrationLayout>
