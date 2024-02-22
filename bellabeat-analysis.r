{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "82d821c8",
   "metadata": {
    "papermill": {
     "duration": 0.002492,
     "end_time": "2024-02-22T13:51:51.855341",
     "exception": false,
     "start_time": "2024-02-22T13:51:51.852849",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=#FE8F77>**red bold text**</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "51618e03",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2024-02-22T13:51:51.863539Z",
     "iopub.status.busy": "2024-02-22T13:51:51.861176Z",
     "iopub.status.idle": "2024-02-22T13:51:53.193184Z",
     "shell.execute_reply": "2024-02-22T13:51:53.190935Z"
    },
    "papermill": {
     "duration": 1.338653,
     "end_time": "2024-02-22T13:51:53.195852",
     "exception": false,
     "start_time": "2024-02-22T13:51:51.857199",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.4     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "#Installing and loading libraries required for this project\n",
    "#install.packages(\"\")\n",
    "library(tidyverse)\n",
    "library(readr)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "01a4cd31",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-02-22T13:51:53.236225Z",
     "iopub.status.busy": "2024-02-22T13:51:53.203020Z",
     "iopub.status.idle": "2024-02-22T13:52:17.751774Z",
     "shell.execute_reply": "2024-02-22T13:52:17.749731Z"
    },
    "papermill": {
     "duration": 24.556667,
     "end_time": "2024-02-22T13:52:17.754630",
     "exception": false,
     "start_time": "2024-02-22T13:51:53.197963",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Read the dataset into variables\n",
    "daily_activities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv\")\n",
    "daily_calories <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyCalories_merged.csv\")\n",
    "daily_intensities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyIntensities_merged.csv\")\n",
    "daily_steps <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailySteps_merged.csv\")\n",
    "seconds_heartrate <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv\")\n",
    "hourly_calories <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyCalories_merged.csv\")\n",
    "hourly_intensities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyIntensities_merged.csv\")\n",
    "hourly_steps <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlySteps_merged.csv\")\n",
    "minutes_calories_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteCaloriesNarrow_merged.csv\")\n",
    "minutes_calories_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteCaloriesWide_merged.csv\")\n",
    "minutes_intensities_narrow <-read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesNarrow_merged.csv\")\n",
    "minutes_intensities_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesWide_merged.csv\")\n",
    "minutes_MET_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteMETsNarrow_merged.csv\")\n",
    "minutes_sleep <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteSleep_merged.csv\")\n",
    "minutes_steps_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteStepsNarrow_merged.csv\")\n",
    "minutes_step_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteStepsWide_merged.csv\")\n",
    "daily_sleep <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv\")\n",
    "weight_loginfo <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "0900d827",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-02-22T13:52:17.762468Z",
     "iopub.status.busy": "2024-02-22T13:52:17.760788Z",
     "iopub.status.idle": "2024-02-22T13:52:17.783792Z",
     "shell.execute_reply": "2024-02-22T13:52:17.781910Z"
    },
    "papermill": {
     "duration": 0.029747,
     "end_time": "2024-02-22T13:52:17.786496",
     "exception": false,
     "start_time": "2024-02-22T13:52:17.756749",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Id'</li><li>'ActivityDate'</li><li>'TotalSteps'</li><li>'TotalDistance'</li><li>'TrackerDistance'</li><li>'LoggedActivitiesDistance'</li><li>'VeryActiveDistance'</li><li>'ModeratelyActiveDistance'</li><li>'LightActiveDistance'</li><li>'SedentaryActiveDistance'</li><li>'VeryActiveMinutes'</li><li>'FairlyActiveMinutes'</li><li>'LightlyActiveMinutes'</li><li>'SedentaryMinutes'</li><li>'Calories'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Id'\n",
       "\\item 'ActivityDate'\n",
       "\\item 'TotalSteps'\n",
       "\\item 'TotalDistance'\n",
       "\\item 'TrackerDistance'\n",
       "\\item 'LoggedActivitiesDistance'\n",
       "\\item 'VeryActiveDistance'\n",
       "\\item 'ModeratelyActiveDistance'\n",
       "\\item 'LightActiveDistance'\n",
       "\\item 'SedentaryActiveDistance'\n",
       "\\item 'VeryActiveMinutes'\n",
       "\\item 'FairlyActiveMinutes'\n",
       "\\item 'LightlyActiveMinutes'\n",
       "\\item 'SedentaryMinutes'\n",
       "\\item 'Calories'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Id'\n",
       "2. 'ActivityDate'\n",
       "3. 'TotalSteps'\n",
       "4. 'TotalDistance'\n",
       "5. 'TrackerDistance'\n",
       "6. 'LoggedActivitiesDistance'\n",
       "7. 'VeryActiveDistance'\n",
       "8. 'ModeratelyActiveDistance'\n",
       "9. 'LightActiveDistance'\n",
       "10. 'SedentaryActiveDistance'\n",
       "11. 'VeryActiveMinutes'\n",
       "12. 'FairlyActiveMinutes'\n",
       "13. 'LightlyActiveMinutes'\n",
       "14. 'SedentaryMinutes'\n",
       "15. 'Calories'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"Id\"                       \"ActivityDate\"            \n",
       " [3] \"TotalSteps\"               \"TotalDistance\"           \n",
       " [5] \"TrackerDistance\"          \"LoggedActivitiesDistance\"\n",
       " [7] \"VeryActiveDistance\"       \"ModeratelyActiveDistance\"\n",
       " [9] \"LightActiveDistance\"      \"SedentaryActiveDistance\" \n",
       "[11] \"VeryActiveMinutes\"        \"FairlyActiveMinutes\"     \n",
       "[13] \"LightlyActiveMinutes\"     \"SedentaryMinutes\"        \n",
       "[15] \"Calories\"                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Inspecting the dataset\n",
    "colnames(daily_activities)"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 1041311,
     "sourceId": 1752235,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30618,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 29.693842,
   "end_time": "2024-02-22T13:52:17.911396",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-02-22T13:51:48.217554",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
