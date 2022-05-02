#!/bin/bash

function pull_repository() {
  echo -e ""
  echo -e "${txtgrn}>> Pull branch(${BRANCH_NAME}) 📷 ${txtrst}"
  git pull "${REMOTE_NAME}" "${BRANCH_NAME}"
  echo -e "${txtgrn}>> Pull branch(${BRANCH_NAME}) done️ ${txtrst}"
}

function build_gradle() {
  echo -e ""
  echo -e "${txtgrn}>> Build gradle(${EXECUTION_PATH}) 🛠️ ${txtrst}"
  echo "${EXECUTION_PATH}"
  "${EXECUTION_PATH}"/gradlew clean build
  echo -e "${txtgrn}>> Build gradle(${EXECUTION_PATH}) done️ ${txtrst}"
}

function run_java() {
  echo -e ""
  echo -e "${txtgrn}>> Run java(${EXECUTION_PATH}/build/libs/${MODULE_NAME}0.0.1-SNAPSHOT.jar) 🏃 ${txtrst}"
  "${EXECUTION_PATH}"/build/libs/"${MODULE_NAME}"0.0.1-SNAPSHOT.jar ${JAVA_ARGUMENTS}
  echo -e "${txtgrn}>> Run java(${EXECUTION_PATH}/build/libs/${MODULE_NAME}0.0.1-SNAPSHOT.jar) done️ ${txtrst}"
}
