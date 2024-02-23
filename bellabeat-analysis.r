{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "44657c6c",
   "metadata": {
    "_cell_guid": "2af898a9-9558-41d5-a6ee-10e9639aa3cf",
    "_uuid": "a469f4c9-c472-42d8-a695-b3a4f05353bb",
    "papermill": {
     "duration": 0.003534,
     "end_time": "2024-02-23T13:44:48.126834",
     "exception": false,
     "start_time": "2024-02-23T13:44:48.123300",
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
   "id": "b89b9f76",
   "metadata": {
    "_cell_guid": "e4cd2a53-f6b2-4d4f-8d2a-db71192b4cdf",
    "_execution_state": "idle",
    "_uuid": "9177315b-4c5c-4eaf-94f0-7c569b3f1af1",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:48.137178Z",
     "iopub.status.busy": "2024-02-23T13:44:48.134588Z",
     "iopub.status.idle": "2024-02-23T13:44:49.200253Z",
     "shell.execute_reply": "2024-02-23T13:44:49.198152Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 1.073392,
     "end_time": "2024-02-23T13:44:49.203066",
     "exception": false,
     "start_time": "2024-02-23T13:44:48.129674",
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
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n",
      "\n",
      "Attaching package: ‘janitor’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    chisq.test, fisher.test\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "#Installing and loading libraries required for this project\n",
    "#install.packages(\"\")\n",
    "library(tidyverse)\n",
    "library(readr)\n",
    "library(janitor)\n",
    "library(dplyr)\n",
    "library(lubridate)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "bdf25b21",
   "metadata": {
    "_cell_guid": "3d668c15-dfbb-4ae7-b40c-e343ceb437f5",
    "_uuid": "448e033f-2f7f-4419-8443-bcf9b30e7566",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.235592Z",
     "iopub.status.busy": "2024-02-23T13:44:49.211235Z",
     "iopub.status.idle": "2024-02-23T13:44:49.281714Z",
     "shell.execute_reply": "2024-02-23T13:44:49.280247Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.077532,
     "end_time": "2024-02-23T13:44:49.283885",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.206353",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Read the dataset into variables\n",
    "daily_activities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv\")\n",
    "#daily_calories <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyCalories_merged.csv\")\n",
    "#daily_intensities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailyIntensities_merged.csv\")\n",
    "#daily_steps <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/dailySteps_merged.csv\")\n",
    "#seconds_heartrate <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv\")\n",
    "#hourly_calories <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyCalories_merged.csv\")\n",
    "#hourly_intensities <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlyIntensities_merged.csv\")\n",
    "#hourly_steps <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/hourlySteps_merged.csv\")\n",
    "#minutes_calories_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteCaloriesNarrow_merged.csv\")\n",
    "#minutes_calories_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteCaloriesWide_merged.csv\")\n",
    "#minutes_intensities_narrow <-read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesNarrow_merged.csv\")\n",
    "#minutes_intensities_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesWide_merged.csv\")\n",
    "#minutes_MET_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteMETsNarrow_merged.csv\")\n",
    "#minutes_sleep <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteSleep_merged.csv\")\n",
    "#minutes_steps_narrow <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteStepsNarrow_merged.csv\")\n",
    "#minutes_step_wide <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/minuteStepsWide_merged.csv\")\n",
    "daily_sleep <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv\")\n",
    "#weight_loginfo <- read.csv(\"/kaggle/input/fitbit/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "aea0d54f",
   "metadata": {
    "_cell_guid": "3f28c073-7b59-44b5-893a-40441181a600",
    "_uuid": "ef8bfa4d-8591-4314-8ef1-efa870e9cad2",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.293001Z",
     "iopub.status.busy": "2024-02-23T13:44:49.291762Z",
     "iopub.status.idle": "2024-02-23T13:44:49.360545Z",
     "shell.execute_reply": "2024-02-23T13:44:49.359042Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.075307,
     "end_time": "2024-02-23T13:44:49.362394",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.287087",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 15</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Id</th><th scope=col>ActivityDate</th><th scope=col>TotalSteps</th><th scope=col>TotalDistance</th><th scope=col>TrackerDistance</th><th scope=col>LoggedActivitiesDistance</th><th scope=col>VeryActiveDistance</th><th scope=col>ModeratelyActiveDistance</th><th scope=col>LightActiveDistance</th><th scope=col>SedentaryActiveDistance</th><th scope=col>VeryActiveMinutes</th><th scope=col>FairlyActiveMinutes</th><th scope=col>LightlyActiveMinutes</th><th scope=col>SedentaryMinutes</th><th scope=col>Calories</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>1503960366</td><td>4/12/2016</td><td>13162</td><td>8.50</td><td>8.50</td><td>0</td><td>1.88</td><td>0.55</td><td>6.06</td><td>0</td><td>25</td><td>13</td><td>328</td><td> 728</td><td>1985</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1503960366</td><td>4/13/2016</td><td>10735</td><td>6.97</td><td>6.97</td><td>0</td><td>1.57</td><td>0.69</td><td>4.71</td><td>0</td><td>21</td><td>19</td><td>217</td><td> 776</td><td>1797</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1503960366</td><td>4/14/2016</td><td>10460</td><td>6.74</td><td>6.74</td><td>0</td><td>2.44</td><td>0.40</td><td>3.91</td><td>0</td><td>30</td><td>11</td><td>181</td><td>1218</td><td>1776</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>1503960366</td><td>4/15/2016</td><td> 9762</td><td>6.28</td><td>6.28</td><td>0</td><td>2.14</td><td>1.26</td><td>2.83</td><td>0</td><td>29</td><td>34</td><td>209</td><td> 726</td><td>1745</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1503960366</td><td>4/16/2016</td><td>12669</td><td>8.16</td><td>8.16</td><td>0</td><td>2.71</td><td>0.41</td><td>5.04</td><td>0</td><td>36</td><td>10</td><td>221</td><td> 773</td><td>1863</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1503960366</td><td>4/17/2016</td><td> 9705</td><td>6.48</td><td>6.48</td><td>0</td><td>3.19</td><td>0.78</td><td>2.51</td><td>0</td><td>38</td><td>20</td><td>164</td><td> 539</td><td>1728</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 15\n",
       "\\begin{tabular}{r|lllllllllllllll}\n",
       "  & Id & ActivityDate & TotalSteps & TotalDistance & TrackerDistance & LoggedActivitiesDistance & VeryActiveDistance & ModeratelyActiveDistance & LightActiveDistance & SedentaryActiveDistance & VeryActiveMinutes & FairlyActiveMinutes & LightlyActiveMinutes & SedentaryMinutes & Calories\\\\\n",
       "  & <dbl> & <chr> & <int> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 1503960366 & 4/12/2016 & 13162 & 8.50 & 8.50 & 0 & 1.88 & 0.55 & 6.06 & 0 & 25 & 13 & 328 &  728 & 1985\\\\\n",
       "\t2 & 1503960366 & 4/13/2016 & 10735 & 6.97 & 6.97 & 0 & 1.57 & 0.69 & 4.71 & 0 & 21 & 19 & 217 &  776 & 1797\\\\\n",
       "\t3 & 1503960366 & 4/14/2016 & 10460 & 6.74 & 6.74 & 0 & 2.44 & 0.40 & 3.91 & 0 & 30 & 11 & 181 & 1218 & 1776\\\\\n",
       "\t4 & 1503960366 & 4/15/2016 &  9762 & 6.28 & 6.28 & 0 & 2.14 & 1.26 & 2.83 & 0 & 29 & 34 & 209 &  726 & 1745\\\\\n",
       "\t5 & 1503960366 & 4/16/2016 & 12669 & 8.16 & 8.16 & 0 & 2.71 & 0.41 & 5.04 & 0 & 36 & 10 & 221 &  773 & 1863\\\\\n",
       "\t6 & 1503960366 & 4/17/2016 &  9705 & 6.48 & 6.48 & 0 & 3.19 & 0.78 & 2.51 & 0 & 38 & 20 & 164 &  539 & 1728\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 15\n",
       "\n",
       "| <!--/--> | Id &lt;dbl&gt; | ActivityDate &lt;chr&gt; | TotalSteps &lt;int&gt; | TotalDistance &lt;dbl&gt; | TrackerDistance &lt;dbl&gt; | LoggedActivitiesDistance &lt;dbl&gt; | VeryActiveDistance &lt;dbl&gt; | ModeratelyActiveDistance &lt;dbl&gt; | LightActiveDistance &lt;dbl&gt; | SedentaryActiveDistance &lt;dbl&gt; | VeryActiveMinutes &lt;int&gt; | FairlyActiveMinutes &lt;int&gt; | LightlyActiveMinutes &lt;int&gt; | SedentaryMinutes &lt;int&gt; | Calories &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 1503960366 | 4/12/2016 | 13162 | 8.50 | 8.50 | 0 | 1.88 | 0.55 | 6.06 | 0 | 25 | 13 | 328 |  728 | 1985 |\n",
       "| 2 | 1503960366 | 4/13/2016 | 10735 | 6.97 | 6.97 | 0 | 1.57 | 0.69 | 4.71 | 0 | 21 | 19 | 217 |  776 | 1797 |\n",
       "| 3 | 1503960366 | 4/14/2016 | 10460 | 6.74 | 6.74 | 0 | 2.44 | 0.40 | 3.91 | 0 | 30 | 11 | 181 | 1218 | 1776 |\n",
       "| 4 | 1503960366 | 4/15/2016 |  9762 | 6.28 | 6.28 | 0 | 2.14 | 1.26 | 2.83 | 0 | 29 | 34 | 209 |  726 | 1745 |\n",
       "| 5 | 1503960366 | 4/16/2016 | 12669 | 8.16 | 8.16 | 0 | 2.71 | 0.41 | 5.04 | 0 | 36 | 10 | 221 |  773 | 1863 |\n",
       "| 6 | 1503960366 | 4/17/2016 |  9705 | 6.48 | 6.48 | 0 | 3.19 | 0.78 | 2.51 | 0 | 38 | 20 | 164 |  539 | 1728 |\n",
       "\n"
      ],
      "text/plain": [
       "  Id         ActivityDate TotalSteps TotalDistance TrackerDistance\n",
       "1 1503960366 4/12/2016    13162      8.50          8.50           \n",
       "2 1503960366 4/13/2016    10735      6.97          6.97           \n",
       "3 1503960366 4/14/2016    10460      6.74          6.74           \n",
       "4 1503960366 4/15/2016     9762      6.28          6.28           \n",
       "5 1503960366 4/16/2016    12669      8.16          8.16           \n",
       "6 1503960366 4/17/2016     9705      6.48          6.48           \n",
       "  LoggedActivitiesDistance VeryActiveDistance ModeratelyActiveDistance\n",
       "1 0                        1.88               0.55                    \n",
       "2 0                        1.57               0.69                    \n",
       "3 0                        2.44               0.40                    \n",
       "4 0                        2.14               1.26                    \n",
       "5 0                        2.71               0.41                    \n",
       "6 0                        3.19               0.78                    \n",
       "  LightActiveDistance SedentaryActiveDistance VeryActiveMinutes\n",
       "1 6.06                0                       25               \n",
       "2 4.71                0                       21               \n",
       "3 3.91                0                       30               \n",
       "4 2.83                0                       29               \n",
       "5 5.04                0                       36               \n",
       "6 2.51                0                       38               \n",
       "  FairlyActiveMinutes LightlyActiveMinutes SedentaryMinutes Calories\n",
       "1 13                  328                   728             1985    \n",
       "2 19                  217                   776             1797    \n",
       "3 11                  181                  1218             1776    \n",
       "4 34                  209                   726             1745    \n",
       "5 10                  221                   773             1863    \n",
       "6 20                  164                   539             1728    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t940 obs. of  15 variables:\n",
      " $ Id                      : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ ActivityDate            : chr  \"4/12/2016\" \"4/13/2016\" \"4/14/2016\" \"4/15/2016\" ...\n",
      " $ TotalSteps              : int  13162 10735 10460 9762 12669 9705 13019 15506 10544 9819 ...\n",
      " $ TotalDistance           : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ TrackerDistance         : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ LoggedActivitiesDistance: num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ VeryActiveDistance      : num  1.88 1.57 2.44 2.14 2.71 ...\n",
      " $ ModeratelyActiveDistance: num  0.55 0.69 0.4 1.26 0.41 ...\n",
      " $ LightActiveDistance     : num  6.06 4.71 3.91 2.83 5.04 ...\n",
      " $ SedentaryActiveDistance : num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ VeryActiveMinutes       : int  25 21 30 29 36 38 42 50 28 19 ...\n",
      " $ FairlyActiveMinutes     : int  13 19 11 34 10 20 16 31 12 8 ...\n",
      " $ LightlyActiveMinutes    : int  328 217 181 209 221 164 233 264 205 211 ...\n",
      " $ SedentaryMinutes        : int  728 776 1218 726 773 539 1149 775 818 838 ...\n",
      " $ Calories                : int  1985 1797 1776 1745 1863 1728 1921 2035 1786 1775 ...\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Id</th><th scope=col>SleepDay</th><th scope=col>TotalSleepRecords</th><th scope=col>TotalMinutesAsleep</th><th scope=col>TotalTimeInBed</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>1503960366</td><td>4/12/2016 12:00:00 AM</td><td>1</td><td>327</td><td>346</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1503960366</td><td>4/13/2016 12:00:00 AM</td><td>2</td><td>384</td><td>407</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1503960366</td><td>4/15/2016 12:00:00 AM</td><td>1</td><td>412</td><td>442</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>1503960366</td><td>4/16/2016 12:00:00 AM</td><td>2</td><td>340</td><td>367</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1503960366</td><td>4/17/2016 12:00:00 AM</td><td>1</td><td>700</td><td>712</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1503960366</td><td>4/19/2016 12:00:00 AM</td><td>1</td><td>304</td><td>320</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Id & SleepDay & TotalSleepRecords & TotalMinutesAsleep & TotalTimeInBed\\\\\n",
       "  & <dbl> & <chr> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 1503960366 & 4/12/2016 12:00:00 AM & 1 & 327 & 346\\\\\n",
       "\t2 & 1503960366 & 4/13/2016 12:00:00 AM & 2 & 384 & 407\\\\\n",
       "\t3 & 1503960366 & 4/15/2016 12:00:00 AM & 1 & 412 & 442\\\\\n",
       "\t4 & 1503960366 & 4/16/2016 12:00:00 AM & 2 & 340 & 367\\\\\n",
       "\t5 & 1503960366 & 4/17/2016 12:00:00 AM & 1 & 700 & 712\\\\\n",
       "\t6 & 1503960366 & 4/19/2016 12:00:00 AM & 1 & 304 & 320\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 5\n",
       "\n",
       "| <!--/--> | Id &lt;dbl&gt; | SleepDay &lt;chr&gt; | TotalSleepRecords &lt;int&gt; | TotalMinutesAsleep &lt;int&gt; | TotalTimeInBed &lt;int&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 1 | 1503960366 | 4/12/2016 12:00:00 AM | 1 | 327 | 346 |\n",
       "| 2 | 1503960366 | 4/13/2016 12:00:00 AM | 2 | 384 | 407 |\n",
       "| 3 | 1503960366 | 4/15/2016 12:00:00 AM | 1 | 412 | 442 |\n",
       "| 4 | 1503960366 | 4/16/2016 12:00:00 AM | 2 | 340 | 367 |\n",
       "| 5 | 1503960366 | 4/17/2016 12:00:00 AM | 1 | 700 | 712 |\n",
       "| 6 | 1503960366 | 4/19/2016 12:00:00 AM | 1 | 304 | 320 |\n",
       "\n"
      ],
      "text/plain": [
       "  Id         SleepDay              TotalSleepRecords TotalMinutesAsleep\n",
       "1 1503960366 4/12/2016 12:00:00 AM 1                 327               \n",
       "2 1503960366 4/13/2016 12:00:00 AM 2                 384               \n",
       "3 1503960366 4/15/2016 12:00:00 AM 1                 412               \n",
       "4 1503960366 4/16/2016 12:00:00 AM 2                 340               \n",
       "5 1503960366 4/17/2016 12:00:00 AM 1                 700               \n",
       "6 1503960366 4/19/2016 12:00:00 AM 1                 304               \n",
       "  TotalTimeInBed\n",
       "1 346           \n",
       "2 407           \n",
       "3 442           \n",
       "4 367           \n",
       "5 712           \n",
       "6 320           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t413 obs. of  5 variables:\n",
      " $ Id                : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ SleepDay          : chr  \"4/12/2016 12:00:00 AM\" \"4/13/2016 12:00:00 AM\" \"4/15/2016 12:00:00 AM\" \"4/16/2016 12:00:00 AM\" ...\n",
      " $ TotalSleepRecords : int  1 2 1 2 1 1 1 1 1 1 ...\n",
      " $ TotalMinutesAsleep: int  327 384 412 340 700 304 360 325 361 430 ...\n",
      " $ TotalTimeInBed    : int  346 407 442 367 712 320 377 364 384 449 ...\n"
     ]
    }
   ],
   "source": [
    "#Understanding the datasets to be used primarily for analysis on a daily basis\n",
    "head(daily_activities)\n",
    "str(daily_activities)\n",
    "\n",
    "head(daily_sleep)\n",
    "str(daily_sleep)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "55e0b51d",
   "metadata": {
    "_cell_guid": "315eaa00-6b46-484f-b397-2ee906a3abf8",
    "_uuid": "946c78e4-58d2-4a2c-b136-8b1b65548fb9",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.373028Z",
     "iopub.status.busy": "2024-02-23T13:44:49.371757Z",
     "iopub.status.idle": "2024-02-23T13:44:49.389594Z",
     "shell.execute_reply": "2024-02-23T13:44:49.388367Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.025304,
     "end_time": "2024-02-23T13:44:49.391497",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.366193",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "33"
      ],
      "text/latex": [
       "33"
      ],
      "text/markdown": [
       "33"
      ],
      "text/plain": [
       "[1] 33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "24"
      ],
      "text/latex": [
       "24"
      ],
      "text/markdown": [
       "24"
      ],
      "text/plain": [
       "[1] 24"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Determine the number of users who contributed to each dataset\n",
    "n_distinct(daily_activities$Id)\n",
    "n_distinct(daily_sleep$Id)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "ae9af859",
   "metadata": {
    "_cell_guid": "32cfe81b-b9f0-4671-bd6b-eabbbd746493",
    "_uuid": "4f29a03f-ac38-4948-8ce0-378fb8fe578b",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.402524Z",
     "iopub.status.busy": "2024-02-23T13:44:49.401262Z",
     "iopub.status.idle": "2024-02-23T13:44:49.424608Z",
     "shell.execute_reply": "2024-02-23T13:44:49.423385Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.030982,
     "end_time": "2024-02-23T13:44:49.426492",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.395510",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0"
      ],
      "text/latex": [
       "0"
      ],
      "text/markdown": [
       "0"
      ],
      "text/plain": [
       "[1] 0"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "3"
      ],
      "text/latex": [
       "3"
      ],
      "text/markdown": [
       "3"
      ],
      "text/plain": [
       "[1] 3"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Number of duplicated rows in each dataset\n",
    "nrow(daily_activities[duplicated(daily_activities),])\n",
    "nrow(daily_sleep[duplicated(daily_sleep),])"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3d081b03",
   "metadata": {
    "_cell_guid": "40b2a1b8-d715-4214-b54b-18ecb3b3ccd4",
    "_uuid": "75991299-97cc-4b92-bba3-728ef31d6019",
    "papermill": {
     "duration": 0.004134,
     "end_time": "2024-02-23T13:44:49.435118",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.430984",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There are three (3) duplicated rows in the `daily_sleep` dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "41f8c57d",
   "metadata": {
    "_cell_guid": "8811da9c-30e3-4008-bea8-3c8c33f2c736",
    "_uuid": "70e6fbf7-7e7e-4a57-aba3-7b54a85e39f4",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.445627Z",
     "iopub.status.busy": "2024-02-23T13:44:49.444560Z",
     "iopub.status.idle": "2024-02-23T13:44:49.459538Z",
     "shell.execute_reply": "2024-02-23T13:44:49.458244Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.022242,
     "end_time": "2024-02-23T13:44:49.461376",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.439134",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Removing the duplicated or blank rows from the dataset\n",
    "daily_sleep <- daily_sleep[!duplicated(daily_sleep),]\n",
    "\n",
    "daily_sleep <- drop_na(daily_sleep)\n",
    "daily_activities <- drop_na(daily_activities)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "c879499a",
   "metadata": {
    "_cell_guid": "1ff78544-ce2b-48ae-9e9a-442ff00828ab",
    "_uuid": "dce7340f-bc88-4177-a806-af379f2adbb4",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.473037Z",
     "iopub.status.busy": "2024-02-23T13:44:49.471713Z",
     "iopub.status.idle": "2024-02-23T13:44:49.520496Z",
     "shell.execute_reply": "2024-02-23T13:44:49.499485Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.057276,
     "end_time": "2024-02-23T13:44:49.522947",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.465671",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t410 obs. of  5 variables:\n",
      " $ Id                : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ SleepDay          : chr  \"4/12/2016 12:00:00 AM\" \"4/13/2016 12:00:00 AM\" \"4/15/2016 12:00:00 AM\" \"4/16/2016 12:00:00 AM\" ...\n",
      " $ TotalSleepRecords : int  1 2 1 2 1 1 1 1 1 1 ...\n",
      " $ TotalMinutesAsleep: int  327 384 412 340 700 304 360 325 361 430 ...\n",
      " $ TotalTimeInBed    : int  346 407 442 367 712 320 377 364 384 449 ...\n",
      "'data.frame':\t940 obs. of  15 variables:\n",
      " $ Id                      : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ ActivityDate            : chr  \"4/12/2016\" \"4/13/2016\" \"4/14/2016\" \"4/15/2016\" ...\n",
      " $ TotalSteps              : int  13162 10735 10460 9762 12669 9705 13019 15506 10544 9819 ...\n",
      " $ TotalDistance           : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ TrackerDistance         : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ LoggedActivitiesDistance: num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ VeryActiveDistance      : num  1.88 1.57 2.44 2.14 2.71 ...\n",
      " $ ModeratelyActiveDistance: num  0.55 0.69 0.4 1.26 0.41 ...\n",
      " $ LightActiveDistance     : num  6.06 4.71 3.91 2.83 5.04 ...\n",
      " $ SedentaryActiveDistance : num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ VeryActiveMinutes       : int  25 21 30 29 36 38 42 50 28 19 ...\n",
      " $ FairlyActiveMinutes     : int  13 19 11 34 10 20 16 31 12 8 ...\n",
      " $ LightlyActiveMinutes    : int  328 217 181 209 221 164 233 264 205 211 ...\n",
      " $ SedentaryMinutes        : int  728 776 1218 726 773 539 1149 775 818 838 ...\n",
      " $ Calories                : int  1985 1797 1776 1745 1863 1728 1921 2035 1786 1775 ...\n"
     ]
    }
   ],
   "source": [
    "#The updated structure of the datasets\n",
    "str(daily_sleep)\n",
    "str(daily_activities)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "7429d7be",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.535937Z",
     "iopub.status.busy": "2024-02-23T13:44:49.534640Z",
     "iopub.status.idle": "2024-02-23T13:44:49.656162Z",
     "shell.execute_reply": "2024-02-23T13:44:49.654774Z"
    },
    "papermill": {
     "duration": 0.13117,
     "end_time": "2024-02-23T13:44:49.658776",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.527606",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Formatting the variables to appropriate datatypes for all datasets, and updating the variable name\n",
    "daily_activities <- daily_activities %>%\n",
    "    rename(date = ActivityDate) %>%\n",
    "    clean_names(case = \"snake\") %>%\n",
    "    mutate(date = as_date(date, format = '%m/%d/%Y'))\n",
    "\n",
    "daily_sleep <- daily_sleep %>%\n",
    "    rename(date = SleepDay) %>%\n",
    "    clean_names(case = \"snake\") %>%\n",
    "    mutate(date = as.POSIXct(date, format = '%m/%d/%Y %H:%M:%S %p'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "4ae66f57",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.670099Z",
     "iopub.status.busy": "2024-02-23T13:44:49.668934Z",
     "iopub.status.idle": "2024-02-23T13:44:49.700893Z",
     "shell.execute_reply": "2024-02-23T13:44:49.698973Z"
    },
    "papermill": {
     "duration": 0.040112,
     "end_time": "2024-02-23T13:44:49.703250",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.663138",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t410 obs. of  5 variables:\n",
      " $ id                  : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ date                : POSIXct, format: \"2016-04-12 12:00:00\" \"2016-04-13 12:00:00\" ...\n",
      " $ total_sleep_records : int  1 2 1 2 1 1 1 1 1 1 ...\n",
      " $ total_minutes_asleep: int  327 384 412 340 700 304 360 325 361 430 ...\n",
      " $ total_time_in_bed   : int  346 407 442 367 712 320 377 364 384 449 ...\n",
      "'data.frame':\t940 obs. of  15 variables:\n",
      " $ id                        : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ date                      : Date, format: \"2016-04-12\" \"2016-04-13\" ...\n",
      " $ total_steps               : int  13162 10735 10460 9762 12669 9705 13019 15506 10544 9819 ...\n",
      " $ total_distance            : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ tracker_distance          : num  8.5 6.97 6.74 6.28 8.16 ...\n",
      " $ logged_activities_distance: num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ very_active_distance      : num  1.88 1.57 2.44 2.14 2.71 ...\n",
      " $ moderately_active_distance: num  0.55 0.69 0.4 1.26 0.41 ...\n",
      " $ light_active_distance     : num  6.06 4.71 3.91 2.83 5.04 ...\n",
      " $ sedentary_active_distance : num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ very_active_minutes       : int  25 21 30 29 36 38 42 50 28 19 ...\n",
      " $ fairly_active_minutes     : int  13 19 11 34 10 20 16 31 12 8 ...\n",
      " $ lightly_active_minutes    : int  328 217 181 209 221 164 233 264 205 211 ...\n",
      " $ sedentary_minutes         : int  728 776 1218 726 773 539 1149 775 818 838 ...\n",
      " $ calories                  : int  1985 1797 1776 1745 1863 1728 1921 2035 1786 1775 ...\n"
     ]
    }
   ],
   "source": [
    "str(daily_sleep)\n",
    "str(daily_activities)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "b3f91714",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-02-23T13:44:49.714869Z",
     "iopub.status.busy": "2024-02-23T13:44:49.713758Z",
     "iopub.status.idle": "2024-02-23T13:44:49.745541Z",
     "shell.execute_reply": "2024-02-23T13:44:49.743532Z"
    },
    "papermill": {
     "duration": 0.040143,
     "end_time": "2024-02-23T13:44:49.747927",
     "exception": false,
     "start_time": "2024-02-23T13:44:49.707784",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t410 obs. of  18 variables:\n",
      " $ id                        : num  1.5e+09 1.5e+09 1.5e+09 1.5e+09 1.5e+09 ...\n",
      " $ date                      : Date, format: \"2016-04-12\" \"2016-04-13\" ...\n",
      " $ total_steps               : int  13162 10735 9762 12669 9705 15506 10544 9819 14371 10039 ...\n",
      " $ total_distance            : num  8.5 6.97 6.28 8.16 6.48 ...\n",
      " $ tracker_distance          : num  8.5 6.97 6.28 8.16 6.48 ...\n",
      " $ logged_activities_distance: num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ very_active_distance      : num  1.88 1.57 2.14 2.71 3.19 ...\n",
      " $ moderately_active_distance: num  0.55 0.69 1.26 0.41 0.78 ...\n",
      " $ light_active_distance     : num  6.06 4.71 2.83 5.04 2.51 ...\n",
      " $ sedentary_active_distance : num  0 0 0 0 0 0 0 0 0 0 ...\n",
      " $ very_active_minutes       : int  25 21 29 36 38 50 28 19 41 39 ...\n",
      " $ fairly_active_minutes     : int  13 19 34 10 20 31 12 8 21 5 ...\n",
      " $ lightly_active_minutes    : int  328 217 209 221 164 264 205 211 262 238 ...\n",
      " $ sedentary_minutes         : int  728 776 726 773 539 775 818 838 732 709 ...\n",
      " $ calories                  : int  1985 1797 1745 1863 1728 2035 1786 1775 1949 1788 ...\n",
      " $ total_sleep_records       : int  1 2 1 2 1 1 1 1 1 1 ...\n",
      " $ total_minutes_asleep      : int  327 384 412 340 700 304 360 325 361 430 ...\n",
      " $ total_time_in_bed         : int  346 407 442 367 712 320 377 364 384 449 ...\n"
     ]
    }
   ],
   "source": [
    "#Merging daily activity and sleep datasets\n",
    "total_activities <- merge(daily_activities, daily_sleep, by = c('id', 'date'))\n",
    "\n",
    "str(total_activities)"
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
   "duration": 4.839635,
   "end_time": "2024-02-23T13:44:49.871750",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-02-23T13:44:45.032115",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
