<#import "template.ftl" as layout>
    <@layout.registrationLayout; section>
        <#if section="header">
            <#--  ${msg("logoutConfirmTitle")}  -->
            <#elseif section="form">
                <div id="kc-logout-confirm" class="content-area">
                    <div id="wrapperPannello" class="wrapperPannello no-gutter d-flex flex-column justify-content-center align-items-center ">
                        <div id="pannelloForm" class="containerComp pannelloForm no-gutter">
                            <div id="row_1" class="row">
                                <div id="colonnaSx" class="colonna default">
                                    <div id="wrapperImmagine">
                                        <img src="${url.resourcesPath}/img/logoPass.svg">
                                    </div>
                                    <div class="wrapperMessaggio" id="wrapperSlogan">
                                        <h1>${msg("logoutConfirmHeader")}</h1>
                                        <div id="istruzioni-accesso" class="istruzioni">${msg("logoutConfirmDescription")}</div>
                                    </div>
                                </div>
                                <div id="colonnaDx" class="colonna">
                                    <form class="form-actions" id="kc-logout-confirm-form" action="${url.logoutConfirmAction}" onsubmit="confirmLogout.disabled = true; return true;" method="POST">
                                        <input type="hidden" name="session_code" value="${logoutConfirm.code}">
                                        <div class="${properties.kcFormGroupClass!}">
                                            <div id="kc-form-options">
                                                <div class="${properties.kcFormOptionsWrapperClass!}">
                                                </div>
                                            </div>
                                            <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                                                <input tabindex="4"
                                                    class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                                                    name="confirmLogout" id="kc-logout" type="submit" value="${msg("doLogout")}" />
                                            </div>
                                        </div>
                                    </form>
                                    <div id="kc-info-message">
                                        <#if logoutConfirm.skipLink>
                                            <#else>
                                                <#if (client.baseUrl)?has_content>
                                                    <p><a href="${client.baseUrl}">
                                                            ${kcSanitize(msg("backToApplication"))?no_esc}
                                                        </a></p>
                                                </#if>
                                        </#if>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
        </#if>
        </@layout.registrationLayout>