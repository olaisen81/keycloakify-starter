// This file is auto-generated by the `update-kc-gen` command. Do not edit it manually.
// Hash: f3b9eb9cc5c74d1b6889f2f6b511bc9e3918a8b83b6e459a883a38765f6ece4e

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
export type KcContext = import("./account/KcContext").KcContext;

declare global {
    interface Window {
        kcContext?: KcContext;
    }
}

export const KcAccountPage = lazy(() => import("./account/KcPage"));

export function KcPage(props: { kcContext: KcContext; fallback?: ReactNode }) {
    const { kcContext, fallback } = props;
    return (
        <Suspense fallback={fallback}>
            {(() => {
                switch (kcContext.themeType) {
                    case "account":
                        return <KcAccountPage kcContext={kcContext} />;
                }
            })()}
        </Suspense>
    );
}
