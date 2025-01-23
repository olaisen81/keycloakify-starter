// This file is auto-generated by the `update-kc-gen` command. Do not edit it manually.
// Hash: 51fd6556b870013e3d8827111f879f1c1aedc17a43a8d65c5a04e4696f6b6dec

/* eslint-disable */

// @ts-nocheck

// noinspection JSUnusedGlobalSymbols

import { lazy, Suspense, type ReactNode } from "react";

export type ThemeName = "passworld-react";

export const themeNames: ThemeName[] = ["passworld-react"];

export type KcEnvName = never;

export const kcEnvNames: KcEnvName[] = [];

export const kcEnvDefaults: Record<KcEnvName, string> = {};

/**
 * NOTE: Do not import this type except maybe in your entrypoint.
 * If you need to import the KcContext import it either from src/login/KcContext.ts or src/account/KcContext.ts.
 * Depending on the theme type you are working on.
 */
export type KcContext =
    | import("./login/KcContext").KcContext
    | import("./account/KcContext").KcContext;

declare global {
    interface Window {
        kcContext?: KcContext;
    }
}

export const KcLoginPage = lazy(() => import("./login/KcPage"));
export const KcAccountPage = lazy(() => import("./account/KcPage"));

export function KcPage(props: { kcContext: KcContext; fallback?: ReactNode }) {
    const { kcContext, fallback } = props;
    return (
        <Suspense fallback={fallback}>
            {(() => {
                switch (kcContext.themeType) {
                    case "login":
                        return <KcLoginPage kcContext={kcContext} />;
                    case "account":
                        return <KcAccountPage kcContext={kcContext} />;
                }
            })()}
        </Suspense>
    );
}
