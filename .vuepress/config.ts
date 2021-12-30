import { defineConfig } from "vuepress/config";

/**
 * @reference https://vuepress.vuejs.org/config/
 */

export default defineConfig({
    title: "dev.c`s blog",
    description: "Front-end 기술을 다룹니다.",
    themeConfig: {
        logo: "https://avatars.githubusercontent.com/u/7499652?v=4",
        nav: [{ text: "Home", link: "/" }],
        sidebar: "auto",
    },
});
