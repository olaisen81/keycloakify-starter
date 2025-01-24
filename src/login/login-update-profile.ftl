<#import "template.ftl" as layout>
	<#import "user-profile-commons.ftl" as userProfileCommons>
		<@layout.registrationLayout displayMessage=messagesPerField.exists('global') displayRequiredFields=true; section>
			<#if section="header">
				${msg("loginProfileTitle")}
				<#elseif section="form">
					<div id="wrapperPannello" class="wrapperPannello no-gutter d-flex flex-column justify-content-center align-items-center ">
						<div id="pannelloForm" class="containerComp pannelloForm no-gutter">
							<div id="row_1" class="row">
								<div id="colonnaSx" class="colonna default">
									<div id="wrapperImmagine">
										<img src="${url.resourcesPath}/img/logoPass.svg">
									</div>
									<div class="wrapperMessaggio" id="wrapperSlogan">
										<h1>Aggiorna il tuo account</h1>
										<div id="istruzioni-accesso" class="istruzioni">Aggiorna le informazioni principali del tuo account</div>
									</div>
								</div>
								<div id="colonnaDx" class="colonna">
									<form id="kc-update-profile-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
										<@userProfileCommons.userProfileFormFields />
										<div class="${properties.kcFormGroupClass!}">
											<div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
												<div class="${properties.kcFormOptionsWrapperClass!}">
												</div>
											</div>
											<div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
												<#if isAppInitiatedAction??>
													<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
													<button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" formnovalidate />
													${msg("doCancel")}
													</button>
													<#else>
														<input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
												</#if>
											</div>
										</div>
									</form>
								</div>
			</#if>
		</@layout.registrationLayout>